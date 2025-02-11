import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/routes_manager/page_routes.dart';
import 'package:movie_app/core/routes_manager/routes_generator.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RoutesGenerate.onGenerateRoute,
          initialRoute: PagesRoutes.splashScreen,
        );
      },
    );
  }
}
