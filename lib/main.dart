import 'package:flutter/material.dart';
import 'utils/app_routes.dart';
import 'utils/theme.dart';

void main() => runApp(const FundMateApp());

class FundMateApp extends StatelessWidget {
  const FundMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FundMate Dashboard',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      // IMPORTANT: Route starts with Login screen first
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
