import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/routes_manager/page_routes.dart';
import 'package:movie_app/core/utils/assets_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 2000),
      () {
        Navigator.pushNamed(context, PagesRoutes.loginScreen);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(ImageAssets.splashBackground), fit: BoxFit.fill),
      ),
      child: FadeInDown(
        duration: const Duration(milliseconds: 1500),
        from: 500.h,
        child: Image.asset(
          IconAssets.movieIcon,
          scale: 1,
        ),
      ),
    ));
  }
}
