import 'package:flutter/material.dart';
import '../models/reward_model.dart';

class RewardCard extends StatelessWidget {
  final RewardModel reward;

  const RewardCard({super.key, required this.reward});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: reward.unlocked ? 1.0 : 0.5,
      duration: const Duration(milliseconds: 800),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                reward.unlocked ? Icons.card_giftcard : Icons.lock,
                size: 32,
                color: reward.unlocked ? Colors.amber : Colors.grey,
              ),
              const SizedBox(width: 12),
              Text(
                reward.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: reward.unlocked ? FontWeight.bold : FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
