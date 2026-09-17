import 'package:flutter/material.dart';
import '../../constants/app_images.dart';
import '../../constants/app_colors.dart';

class GameImagesRow extends StatelessWidget {
  const GameImagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          AppImages.bat,
          height: 100,
          width: 100,
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.sports_cricket,
            size: 80,
            color: AppColors.white,
          ),
        ),
        Image.asset(
          AppImages.ball,
          height: 100,
          width: 100,
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.sports_baseball,
            size: 80,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}