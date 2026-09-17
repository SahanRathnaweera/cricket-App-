# 🏏 Mini Cricket App

A simple and interactive **Mini Cricket Mobile Application** built using **Flutter**. This application simulates a short cricket game where users can hit runs randomly, track their remaining balls, and restart the game when finished.

---

## 📱 Features

* **Interactive Gameplay:** Tap the **Bat** button to score random runs (`0, 1, 2, 3, 4, 6`).
* **Real-time Scoreboard:** Live updates for total runs scored and remaining balls.
* **Game Over Detection:** Detects when all 6 balls are bowled and displays the final status.
* **Restart Feature:** Reset scores and ball count with a single tap to play again.
* **Clean & Modular Architecture:** Built using Flutter best practices (Constants, Controllers, and Reusable Custom Widgets).

---

## 🏗 Project Architecture & Structure

The project follows a modular and clean folder structure:

```text
lib/
├── constants/          # Colors, image paths, and app assets
├── controllers/        # Business logic and state management
├── views/              # Main UI screen and custom modular widgets
│   └── widgets/        # Scoreboard, action buttons, images row
└── main.dart           # App entry point