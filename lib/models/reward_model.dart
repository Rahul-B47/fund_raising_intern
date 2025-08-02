class RewardModel {
  final String title;
  final String description;
  final String iconPath; // e.g., 'assets/icons/trophy.png'
  final bool unlocked;
  final DateTime? unlockedDate;

  RewardModel({
    required this.title,
    required this.description,
    required this.iconPath,
    required this.unlocked,
    this.unlockedDate,
  });
}
