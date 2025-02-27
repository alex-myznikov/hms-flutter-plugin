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

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:huawei_ml_text/src/common/text_analyzer.dart';
import 'package:huawei_ml_text/src/common/constants.dart';
import 'package:huawei_ml_text/src/result/ml_table.dart';

class MLFormRecognitionAnalyzer implements TextAnalyzer<dynamic, String> {
  late MethodChannel _channel;

  MLFormRecognitionAnalyzer() {
    _channel = const MethodChannel("$baseChannel.form");
  }

  Future<bool> stop() async {
    return await _channel.invokeMethod("form#stop");
  }

  @override
  Future<MLFormRecognitionTablesAttribute> analyseFrame(
      String imagePath) async {
    return MLFormRecognitionTablesAttribute.fromJson(json.decode(
        await _channel.invokeMethod("form#analyseFrame", {"path": imagePath})));
  }

  @override
  Future<MLFormRecognitionTablesAttribute> asyncAnalyseFrame(
      String imagePath) async {
    return MLFormRecognitionTablesAttribute.fromJson(json.decode(await _channel
        .invokeMethod("form#asyncAnalyseFrame", {"path": imagePath})));
  }

  @override
  Future<bool> destroy() async {
    return await _channel.invokeMethod("form#destroy");
  }

  @override
  Future<bool> isAvailable() async {
    return await _channel.invokeMethod("form#isAvailable");
  }
}
