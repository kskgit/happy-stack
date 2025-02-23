import 'package:flutter/material.dart';
import 'package:flutter_tutorial/constants/theme.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.isLading,
    required this.text,
    super.key,
    this.onPressed,
  });

  final bool isLading;
  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.button,
        padding: const EdgeInsets.symmetric(
          horizontal: 100,
          vertical: 15,
        ),
      ),
      child: isLading
          ? const CircularProgressIndicator()
          : Text(
              text,
              style: const TextStyle(color: AppColors.buttonText),
            ),
    );
  }
}
