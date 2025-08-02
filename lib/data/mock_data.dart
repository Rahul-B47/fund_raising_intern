import '../models/intern_model.dart';
import '../models/leaderboard_model.dart';
import '../models/announcement_model.dart';
import '../models/reward_model.dart';

final InternModel currentIntern = InternModel(
  name: 'Rahul Poojary',
  referralCode: 'rahul2025',
  donations: 5000,
);

// 🌟 Leaderboard dummy data
final List<LeaderboardModel> leaderboard = [
  LeaderboardModel(name: 'Rahul P.', score: 5000),
  LeaderboardModel(name: 'Aisha M.', score: 4200),
  LeaderboardModel(name: 'Neha S.', score: 3900),
  LeaderboardModel(name: 'Ankit R.', score: 3500),
  LeaderboardModel(name: 'Zara K.', score: 3000),
  LeaderboardModel(name: 'Ishaan T.', score: 2700),
  LeaderboardModel(name: 'Maya V.', score: 2500),
  LeaderboardModel(name: 'Yusuf B.', score: 2200),
  LeaderboardModel(name: 'Kiran P.', score: 2100),
  LeaderboardModel(name: 'Ananya R.', score: 1800),
];

// 🎁 Rewards dummy data
final List<RewardModel> rewards = [
  RewardModel(
    title: '₹1000 Milestone',
    description: 'Achieved ₹1000 in donations.',
    iconPath: 'assets/icons/milestone1.png',
    unlocked: true,
    unlockedDate: DateTime(2025, 7, 15),
  ),
  RewardModel(
    title: '₹5000 Milestone',
    description: 'Crossed ₹5000 donation goal!',
    iconPath: 'assets/icons/milestone2.png',
    unlocked: true,
    unlockedDate: DateTime(2025, 7, 30),
  ),
  RewardModel(
    title: '₹10000 Milestone',
    description: 'Halfway to ₹20,000!',
    iconPath: 'assets/icons/milestone3.png',
    unlocked: false,
  ),
  RewardModel(
    title: '₹15000 Milestone',
    description: 'Close to greatness. Keep going!',
    iconPath: 'assets/icons/milestone4.png',
    unlocked: false,
  ),
  RewardModel(
    title: 'Top 3 Leaderboard',
    description: 'Maintained a top 3 leaderboard spot.',
    iconPath: 'assets/icons/trophy.png',
    unlocked: false,
  ),
  RewardModel(
    title: 'Intern of the Month',
    description: 'Recognized for outstanding contribution.',
    iconPath: 'assets/icons/star.png',
    unlocked: false,
  ),
];

// 📢 Announcements dummy data
final List<AnnouncementModel> announcements = [
  AnnouncementModel(
    title: '🚀 Round 2 Update',
    content: 'Get ready for the live app build! Instructions coming soon.',
    date: '01 Aug 2025',
    isNew: true,
  ),
  AnnouncementModel(
    title: '🏆 Leaderboard Top 3',
    content: 'Congratulations to the top performers this week!',
    date: '30 Jul 2025',
    isNew: true,
  ),
  AnnouncementModel(
    title: '🎨 UI Guidelines Released',
    content: 'Stick to the design theme for bonus evaluation points.',
    date: '28 Jul 2025',
  ),
  AnnouncementModel(
    title: '⭐ Intern of the Week',
    content: 'Neha S. leads with 3900 points. Keep it up!',
    date: '26 Jul 2025',
  ),
  AnnouncementModel(
    title: '🎓 Onboarding Complete',
    content: 'All interns have completed onboarding successfully.',
    date: '25 Jul 2025',
  ),
  AnnouncementModel(
    title: '📣 New Referral Challenge',
    content: 'Refer 3 new donors to unlock ₹1000 bonus reward!',
    date: '24 Jul 2025',
  ),
];
