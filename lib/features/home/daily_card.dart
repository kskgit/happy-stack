import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/features/home/domain/happiness.dart';
import 'package:flutter_tutorial/routing/app_router.dart';

class DailyCard extends StatelessWidget {
  const DailyCard({
    required this.happiness,
    super.key,
  });
  final Happiness happiness;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context.router.push(EditRoute(happiness: happiness));
      },
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          color: const Color(0xFFB5E0FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                happiness.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D47A1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
