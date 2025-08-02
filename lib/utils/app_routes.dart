import 'package:flutter/material.dart';

// Screens
import '../screens/login_screen.dart';
import '../screens/main_screen.dart'; // BottomNav wrapper screen
import '../screens/dashboard_screen.dart';
import '../screens/leaderboard_screen.dart';
import '../screens/announcements_screen.dart';

/// Centralized route management for the app
final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const LoginScreen(),
  '/main': (context) => const MainScreen(), // Main bottom navigation controller
  '/dashboard': (context) => const DashboardScreen(),
  '/leaderboard': (context) => const LeaderboardScreen(),
  '/announcements': (context) => const AnnouncementsScreen(),
};
