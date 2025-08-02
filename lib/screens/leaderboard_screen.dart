import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/leaderboard_tile.dart';
import '../utils/constants.dart';
import '../widgets/app_drawer.dart'; // <- Make sure this is created

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final maxScore = leaderboard.first.score.toDouble(); // Top score reference

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F9),
      drawer: const AppDrawer(), // 🟦 Drawer for hamburger
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Leaderboard',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),

      body: Column(
        children: [
          // Gradient Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
            decoration: const BoxDecoration(gradient: kPrimaryGradient),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '🏆 Leaderboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Top performing interns ranked by score',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.85),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),

          // Leaderboard List
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF5F5F9),
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                itemCount: leaderboard.length,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  return _animatedLeaderboardTile(context, index, maxScore);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 🔄 Animated Tile with SnackBar
  Widget _animatedLeaderboardTile(BuildContext context, int index, double maxScore) {
    return TweenAnimationBuilder(
      tween: Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero),
      duration: Duration(milliseconds: 500 + index * 100),
      curve: Curves.easeOutCubic,
      builder: (context, offset, child) {
        return GestureDetector(
          onTap: () {
            final item = leaderboard[index];
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  '${item.name} is ranked #${index + 1} with ${item.score} points!',
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                duration: const Duration(seconds: 2),
                backgroundColor: Colors.deepPurple.shade400,
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
            );
          },
          child: Transform.translate(
            offset: offset * 40,
            child: LeaderboardTile(
              item: leaderboard[index],
              rank: index + 1,
              maxScore: maxScore,
            ),
          ),
        );
      },
    );
  }
}
