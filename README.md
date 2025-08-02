# FundMate Intern Dashboard App

A modern and responsive Flutter app designed for fundraising interns to manage dashboards, view leaderboards, receive announcements, and access personalized settings. This app features a clean UI, bottom navigation, and a professional hamburger drawer menu.

---

## 📱 Features

- 🔐 **Login Screen**  
  Simple intern login page (future enhancement: Firebase Auth integration)

- 📊 **Dashboard**  
  Overview of fundraising progress, performance metrics

- 🏆 **Leaderboard**  
  Ranking of top-performing interns

- 📣 **Announcements**  
  Stay updated with latest news and events

- ☰ **Hamburger Drawer (Sidebar)**  
  Accessible from all screens for profile, settings, and logout

---

```bash
assets/
├── fonts/
│   ├── Poppins-Bold.ttf
│   ├── Poppins-Light.ttf
│   ├── Poppins-Regular.ttf
│   └── Poppins-SemiBold.ttf
├── icons/
├── images/

lib/
├── data/
│   └── mock_data.dart                  # Dummy data for UI
├── models/
│   ├── announcement_model.dart         # Model for announcements
│   ├── intern_model.dart               # Intern data model
│   ├── leaderboard_model.dart          # Model for leaderboard
│   └── reward_model.dart               # Model for rewards
├── screens/
│   ├── announcements_screen.dart       # Announcements UI
│   ├── dashboard_screen.dart           # Dashboard main UI
│   ├── leaderboard_screen.dart         # Leaderboard page
│   ├── login_screen.dart               # Login page
│   └── main_screen.dart                # Bottom navigation holder
├── utils/
│   ├── app_routes.dart                 # Route names and navigation
│   ├── constants.dart                  # App-wide constants
│   ├── styles.dart                     # Text styles
│   └── theme.dart                      # ThemeData setup
├── widgets/
│   ├── announcement_card.dart          # Card widget for announcement
│   ├── app_drawer.dart                 # Drawer menu (optional)
│   ├── custom_button.dart              # Custom styled buttons
│   ├── custom_text_field.dart          # Input fields for login
│   ├── dashboard_card.dart             # Widget for dashboard items
│   ├── leaderboard_tile.dart           # Tile for leaderboard entry
│   └── reward_card.dart                # Card for rewards
└── main.dart                           # Entry point of the app

linux/
macos/
test/
└── widget_test.dart                    # Sample widget test

.idea/
.android/
.ios/
.build/
```
## 🚀 Getting Started

### 1. Clone the repo

```bash
git clone https://github.com/your-username/fundmate-dashboard.git
cd fundraising_intern_dashboard
```
### Install dependencies
flutter pub get

### Run the app
flutter run







