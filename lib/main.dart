import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:localauth/screens/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final LocalAuthentication auth = LocalAuthentication();
  if (await auth.canCheckBiometrics == true ||
      await auth.isDeviceSupported() == true) {
    auth.authenticate(localizedReason: "App lock").then((value) {
      return runApp(MaterialApp(
        home: homepagee(),
      ));
    });
  }
}
