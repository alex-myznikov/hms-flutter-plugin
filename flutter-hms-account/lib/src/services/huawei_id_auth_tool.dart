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

import 'package:flutter/services.dart';
import '../common/account.dart';
import '../common/scope.dart';
import '../utils/account_utils.dart';
import '../utils/constants.dart';

/// Provides a static and practical method to obtain and delete authorization information.
class HuaweiIdAuthTool {
  static const MethodChannel _c = const MethodChannel(AUTH_TOOL);

  /// Deletes authentication information cached locally.
  static Future<bool> deleteAuthInfo(String accessToken) async {
    return await _c
        .invokeMethod("deleteAuthInfo", {'accessToken': accessToken});
  }

  /// Obtains a UnionID.
  static Future<String> requestUnionId(Account account) async {
    if (account.name == null) {
      throw Exception("Account name must not be null!");
    }
    return await _c
        .invokeMethod("requestUnionId", {'accountName': account.name});
  }

  /// Obtains a token.
  static Future<String> requestAccessToken(
      Account account, List<Scope> scopeList) async {
    if (account.name == null || account.type == null) {
      throw Exception("Account name and type must not be null!");
    }

    final List<String> scopes = getScopeList(scopeList);

    return await _c.invokeMethod("requestAccessToken",
        {'type': account.type, 'name': account.name, 'scopeList': scopes});
  }
}
