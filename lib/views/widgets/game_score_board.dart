import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class GameScoreBoard extends StatelessWidget {
  final int runs;
  final int balls;

  const GameScoreBoard({
    super.key,
    required this.runs,
    required this.balls,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Runs", style: TextStyle(color: AppColors.white, fontSize: 18)),
            Text("Balls", style: TextStyle(color: AppColors.white, fontSize: 18)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "$runs",
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$balls",
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}