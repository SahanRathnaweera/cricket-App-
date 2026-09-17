import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../controllers/cricket_game_controller.dart';
import 'widgets/game_action_buttons.dart';
import 'widgets/game_images_row.dart';
import 'widgets/game_score_board.dart';

class CricketGameScreen extends StatefulWidget {
  const CricketGameScreen({super.key});

  @override
  State<CricketGameScreen> createState() => _CricketGameScreenState();
}

class _CricketGameScreenState extends State<CricketGameScreen> {
  final CricketGameController _controller = CricketGameController();

  void _onBat() {
    setState(() {
      _controller.playBall();
    });
  }

  void _onRestart() {
    setState(() {
      _controller.restartGame();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mini Cricket',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 19, 29, 66),
        centerTitle: true,
      ),
      body: Container(
        color: AppColors.background,
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const GameImagesRow(),
            const SizedBox(height: 30),
            GameScoreBoard(
              runs: _controller.totalRuns,
              balls: _controller.balls,
            ),
            const SizedBox(height: 40),
            if (_controller.statusMessage.isNotEmpty)
              Text(
                _controller.statusMessage,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            const SizedBox(height: 20),
            GameActionButtons(
              isGameOver: _controller.isGameOver,
              onBatPressed: _onBat,
              onRestartPressed: _onRestart,
            ),
          ],
        ),
      ),
    );
  }
}