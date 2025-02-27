/*
    Copyright 2020-2022. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License")
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:huawei_ads/hms_ads_lib.dart';
import 'package:huawei_ads/utils/channels.dart';

class BannerAd {
  static final Map<int, BannerAd?> bannerAds = <int, BannerAd?>{};
  int get id => hashCode;

  static final String _adType = 'Banner';
  String adSlotId;
  AdParam adParam;
  BannerAdSize size;
  int? bannerRefreshTime;
  AdListener? _listener;
  late EventChannel _streamBanner;
  StreamSubscription? _listenerSub;

  BannerAd({
    required this.adSlotId,
    required this.size,
    this.bannerRefreshTime,
    AdListener? listener,
    AdParam? adParam,
  }) : this.adParam = adParam ?? AdParam() {
    bannerAds[id] = this;
    _streamBanner = EventChannel('$BANNER_EVENT_CHANNEL/$id');
    _listener = listener;
  }

  set setAdListener(AdListener listener) {
    _listener = listener;
  }

  AdListener? get getAdListener => _listener;

  Future<bool?> _initAd() async {
    return Ads.instance.channelBanner
        .invokeMethod("initBannerAd", <String, dynamic>{
      'id': id,
      'width': size.width,
      'height': size.height,
      'refreshTime': bannerRefreshTime,
    });
  }

  Future<bool?> loadAd() async {
    await _initAd();
    _startListening();
    return Ads.instance.channelBanner
        .invokeMethod("loadBannerAd", <String, dynamic>{
      'id': id,
      'adSlotId': adSlotId,
      'adParam': adParam.toJson(),
    });
  }

  Future<bool?> isLoading() {
    return Ads.instance.channelBanner.invokeMethod("isAdLoading",
        <String, dynamic>{'id': id, 'adSlotId': adSlotId, "adType": _adType});
  }

  Future<bool?> pause() {
    return Ads.instance.channelBanner.invokeMethod("pauseAd",
        <String, dynamic>{'id': id, 'adSlotId': adSlotId, "adType": _adType});
  }

  Future<bool?> resume() {
    return Ads.instance.channelBanner.invokeMethod("resumeAd",
        <String, dynamic>{'id': id, 'adSlotId': adSlotId, "adType": _adType});
  }

  Future<bool?> show(
      {Gravity gravity = Gravity.bottom, double offset = 0.0}) async {
    bool? result = await Ads.instance.channelBanner
        .invokeMethod("showBannerAd", <String, dynamic>{
      'id': id,
      'offset': offset.toString(),
      'gravity': describeEnum(gravity),
      "adType": _adType
    });
    return result;
  }

  Future<bool?> destroy() async {
    bannerAds[id] = null;
    _listenerSub?.cancel();
    bool? result = await Ads.instance.channelBanner.invokeMethod(
        "destroyAd", <String, dynamic>{'id': id, "adType": _adType});
    return result;
  }

  void _startListening() {
    _listenerSub?.cancel();
    _listenerSub =
        _streamBanner.receiveBroadcastStream(id).listen((channelEvent) {
      final Map<dynamic, dynamic> argumentsMap = channelEvent;
      final AdEvent? event = Ads.toAdEvent(argumentsMap['event']);
      if (event != null) {
        event == AdEvent.failed
            ? _listener?.call(event, errorCode: argumentsMap['errorCode'])
            : _listener?.call(event);
      }
    });
  }
}

enum Gravity { bottom, center, top }
