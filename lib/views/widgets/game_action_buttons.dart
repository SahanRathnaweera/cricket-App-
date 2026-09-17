import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class GameActionButtons extends StatelessWidget {
  final bool isGameOver;
  final VoidCallback onBatPressed;
  final VoidCallback onRestartPressed;

  const GameActionButtons({
    super.key,
    required this.isGameOver,
    required this.onBatPressed,
    required this.onRestartPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (!isGameOver) {
      return ElevatedButton(
        onPressed: onBatPressed,
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.buttonGrey),
        child: const Text("Bat", style: TextStyle(color: AppColors.white)),
      );
    }

    return ElevatedButton(
      onPressed: onRestartPressed,
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.buttonRed),
      child: const Text("Restart", style: TextStyle(color: AppColors.white)),
    );
  }
}