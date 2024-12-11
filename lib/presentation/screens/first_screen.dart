import 'package:flutter/material.dart';
import 'package:untitled17/core/styles/app_colors.dart';
import 'package:untitled17/core/styles/app_text.dart';
import 'package:untitled17/presentation/components/custom_container.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: AppText.alphabet.length,
        itemBuilder: (context, index) => CustomContainer(
          text: AppText.alphabet[index],
          color: AppColors.colors[index],
        ),
      ),
    );
  }
}
