import 'dart:math';

class CricketGameController {
  int totalRuns = 0;
  int balls = 6;
  String statusMessage = "";

  final List<int> possibleRuns = [0, 1, 2, 3, 4, 6];

  bool get isGameOver => balls <= 0;

  void playBall() {
    if (!isGameOver) {
      final random = Random();
      int runsScored = possibleRuns[random.nextInt(possibleRuns.length)];

      balls -= 1;
      totalRuns += runsScored;

      if (runsScored == 0) {
        statusMessage = "No Runs";
      } else {
        statusMessage = "$runsScored Runs";
      }
    }
  }

  void restartGame() {
    totalRuns = 0;
    balls = 6;
    statusMessage = "";
  }
}