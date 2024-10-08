import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/core/constants/assets_images.dart';
import 'package:whatsapp/core/themes/colors_app.dart';
import 'package:whatsapp/core/themes/styles.dart';
import 'package:whatsapp/features/auth/views/widgets/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  // ignore: override_on_non_overriding_member
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const LoginPage();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.splachColor,
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Image.asset(
            AssetImages.logo,
            height: 200,
          ),
          Center(
            child: Text(
              'WhatsUp',
              style: Styles.textStyle48,
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          Text(
            'The best chat app of this century',
            style: Styles.textStyle18,
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
