import 'package:didomi_sdk_example/widgets/get_user_consent_status_for_vendor_and_required_purposes.dart';
import 'package:didomi_sdk_example/widgets/initialize_small.dart';
import 'package:didomi_sdk_example/widgets/set_user_agree_to_all.dart';
import 'package:didomi_sdk_example/widgets/set_user_disagree_to_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SampleForUserConsentForVendorAndRequiredPurposesTestsApp extends StatelessWidget {
  SampleForUserConsentForVendorAndRequiredPurposesTestsApp({required Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "User Consent for Vendor and Required Purposes Tests",
        home: HomePage(),
      );
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        child: ListView(
          key: Key("components_list"),
          children: [
            InitializeSmall(),
            // Actions
            SetUserAgreeToAll(),
            SetUserDisagreeToAll(),
            // Vendor
            GetUserConsentStatusForVendorAndRequiredPurposes()
          ],
        ),
      );
}
