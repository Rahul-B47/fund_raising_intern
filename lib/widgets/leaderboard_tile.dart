import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/leaderboard_model.dart';
import 'package:confetti/confetti.dart';

class LeaderboardTile extends StatefulWidget {
  final LeaderboardModel item;
  final int rank;
  final double maxScore;
  final double? scoreDelta;
  final bool showConfetti;

  const LeaderboardTile({
    super.key,
    required this.item,
    required this.rank,
    required this.maxScore,
    this.scoreDelta,
    this.showConfetti = false,
  });

  @override
  State<LeaderboardTile> createState() => _LeaderboardTileState();
}

class _LeaderboardTileState extends State<LeaderboardTile> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 1));
    if (widget.showConfetti && widget.rank <= 3) {
      _confettiController.play();
    }
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void _showUserDetails() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.item.name,
                style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Text('Score: ${widget.item.score}'),
              const SizedBox(height: 8),
              Text('Rank: #${widget.rank}'),
              const SizedBox(height: 8),
              Text(widget.scoreDelta != null
                  ? 'Score Change: ${widget.scoreDelta! >= 0 ? '+' : ''}${widget.scoreDelta}'
                  : 'No change data'),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isTop3 = widget.rank <= 3;
    final String icon = _getRankIcon(widget.rank);
    final Color color = _getRankColor(widget.rank);
    final double scorePercent = (widget.item.score / widget.maxScore).clamp(0.0, 1.0);

    return Stack(
      children: [
        InkWell(
          onTap: _showUserDetails,
          borderRadius: BorderRadius.circular(16),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.grey.shade100,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.08),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    if (isTop3)
                      Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: RadialGradient(
                            colors: [
                              color.withOpacity(0.2),
                              color.withOpacity(0.05),
                            ],
                          ),
                        ),
                      ),
                    Tooltip(
                      message: _getRankTooltip(widget.rank),
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: color.withOpacity(0.15),
                        child: Text(icon, style: const TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item.name,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Stack(
                        children: [
                          Container(
                            height: 6,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 600),
                            height: 6,
                            width: 200 * scorePercent,
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ],
                      ),
                      if (widget.scoreDelta != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            widget.scoreDelta! >= 0
                                ? '+${widget.scoreDelta} pts'
                                : '${widget.scoreDelta} pts',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: widget.scoreDelta! >= 0 ? Colors.green : Colors.red,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '#${widget.rank}',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${widget.item.score} pts',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        if (widget.showConfetti && isTop3)
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirectionality: BlastDirectionality.explosive,
                shouldLoop: false,
                colors: const [Colors.red, Colors.blue, Colors.orange, Colors.green],
              ),
            ),
          ),
      ],
    );
  }

  String _getRankIcon(int rank) {
    switch (rank) {
      case 1:
        return '🥇';
      case 2:
        return '🥈';
      case 3:
        return '🥉';
      default:
        return '⭐';
    }
  }

  String _getRankTooltip(int rank) {
    switch (rank) {
      case 1:
        return 'Gold Rank';
      case 2:
        return 'Silver Rank';
      case 3:
        return 'Bronze Rank';
      default:
        return 'Participant';
    }
  }

  Color _getRankColor(int rank) {
    switch (rank) {
      case 1:
        return const Color(0xFFFFC107); // gold
      case 2:
        return const Color(0xFFB0BEC5); // silver
      case 3:
        return const Color(0xFF8D6E63); // bronze
      default:
        return const Color(0xFF2196F3); // blue
    }
  }
}
