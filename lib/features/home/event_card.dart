import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/features/home/domain/happiness.dart';
import 'package:flutter_tutorial/routing/app_router.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    required this.happiness,
    super.key,
  });
  final Happiness happiness;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await context.router.push(EditRoute(happiness: happiness));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.orange,
            child: Icon(Icons.emoji_emotions, color: Colors.white),
          ),
          title: Text(happiness.name),
        ),
      ),
    );
  }
}
