import 'dart:async';

import 'package:didomi_sdk/didomi_sdk.dart';
import 'package:didomi_sdk/parameters/didomi_initialize_parameters.dart';
import 'package:didomi_sdk_example/widgets/base_sample_widget_state.dart';
import 'package:flutter/material.dart';

/// Widget to call DidomiSdk.initialize
class InitializeSmall extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InitializeSmallState();
}

class _InitializeSmallState extends BaseSampleWidgetState<InitializeSmall> {
  @override
  String getButtonName() => "Initialize SDK";

  @override
  String getActionId() => "initializeSmall";

  @override
  Future<String> callDidomiPlugin() async {
    await DidomiSdk.initializeWithParameters(
        DidomiInitializeParameters(apiKey: "9bf8a7e4-db9a-4ff2-a45c-ab7d2b6eadba", noticeId: "Ar7NPQ72"));
    return "OK";
  }
}
