import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/features/home/daily_list.dart';
import 'package:flutter_tutorial/features/home/weekly_day_list.dart';
import 'package:flutter_tutorial/features/home/weekly_day_selected_controller.dart';
import 'package:flutter_tutorial/features/input_form/registration/registration_screen.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDay = ref.watch(weeklyDaySelectedControlloerProvider);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              // TODO: 通知機能の実装
            },
          ),
          const CircleAvatar(
            radius: 16,
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          DailyList(dayOfWeek: selectedDay),
          const SizedBox(height: 24),
          WeeklyDayList(ref: ref, selectedDay: selectedDay),
          const Spacer(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final panelController = PanelController();
          showDialog<void>(
            context: context,
            builder: (context) => SlidingUpPanel(
              controller: panelController,
              backdropEnabled: true,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              minHeight: 0,
              maxHeight: MediaQuery.of(context).size.height * 0.9,
              panel: const RegistrationScreen(),
              body: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(color: Colors.transparent),
              ),
            ),
          );

          // パネルを開く
          Future.delayed(
            const Duration(milliseconds: 100),
            panelController.open,
          );
        },
        backgroundColor: Colors.purple.shade300,
        child: const Icon(Icons.add),
      ),
    );
  }
}
