import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/features/home/daily_list.dart';
import 'package:flutter_tutorial/features/home/widgets/day_card.dart';
import 'package:flutter_tutorial/features/input_form/registration/registration_screen.dart';
import 'package:flutter_tutorial/providers/selected_day_provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDay = ref.watch(selectedDayProvider);
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
          // 上部のDailyListコンテナ
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DailyList(dayOfWeek: selectedDay),
          ),

          const SizedBox(height: 24),

          _buildWeeklyDayCards(ref, selectedDay),

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

  Widget _buildWeeklyDayCards(WidgetRef ref, DayOfWeek selectedDay) {
    final now = DateTime.now();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            DayOfWeek.values.length,
            (i) {
              final date = DateTime(now.year, now.month, now.day + i);
              final dayOfWeek = DayOfWeek.values.firstWhere(
                (day) => day.weekdayIndex == (date.weekday),
              );

              return DayCard(
                date: date,
                dayOfWeek: dayOfWeek,
                isSelected: dayOfWeek == selectedDay,
                happyCount: i % 2 == 0 ? i + 1 : null, // TODO: API経由で取得するように変更
              );
            },
          ),
        ),
      ),
    );
  }
}
