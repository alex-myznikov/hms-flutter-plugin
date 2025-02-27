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

import 'dart:typed_data';

class MLImageSegmentation {
  Uint8List? foreground;
  Uint8List? grayscale;
  Uint8List? original;
  Uint8List? masks;

  MLImageSegmentation(
      {this.foreground, this.grayscale, this.original, this.masks});

  factory MLImageSegmentation.fromMap(Map<dynamic, dynamic> map) {
    return MLImageSegmentation(
        foreground: map['foreground'] ?? null,
        grayscale: map['grayscale'] ?? null,
        original: map['original'] ?? null,
        masks: map['masks'] ?? null);
  }
}
