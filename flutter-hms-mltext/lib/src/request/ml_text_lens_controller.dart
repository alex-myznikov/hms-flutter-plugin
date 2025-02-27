/*
    Copyright 2021-2022. Huawei Technologies Co., Ltd. All rights reserved.

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

import 'package:flutter/foundation.dart';

import '../common/constants.dart';

class MLTextLensController {
  static const int backLens = 0;
  static const int frontLens = 1;
  static const String flashModeOff = "off";
  static const String flashModeAuto = "auto";
  static const String flashModeOn = "on";
  static const String focusModeContinuousVideo = "continuous-video";
  static const String focusModeContinuousPicture = "continuous-picture";

  TextTransaction transaction;
  int? lensType;
  double? applyFps;
  String? flashMode;
  String? focusMode;
  bool? automaticFocus;
  int? maxFrameLostCount;

  MLTextLensController(
      {this.lensType = backLens,
      this.applyFps = 30.0,
      this.automaticFocus = true,
      required this.transaction,
      this.maxFrameLostCount = 2,
      this.flashMode = flashModeAuto,
      this.focusMode = focusModeContinuousVideo});

  Map<String, dynamic> toMap() {
    return {
      "lensType": lensType ?? backLens,
      "analyzerType": describeEnum(transaction),
      "applyFps": applyFps ?? 30.0,
      "automaticFocus": automaticFocus ?? true,
      "flashMode": flashMode ?? flashModeAuto,
      "focusMode": focusMode ?? focusModeContinuousVideo,
      "maxFrameLostCount": maxFrameLostCount ?? 2
    };
  }
}
