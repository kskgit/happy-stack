import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/features/home/daily_list.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final panelController = PanelController();
          showDialog(
            context: context,
            builder: (context) => SlidingUpPanel(
              controller: panelController,
              backdropEnabled: true,
              backdropColor: Colors.black.withOpacity(0.5),
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
      body: Column(
        children: [
          // 上部のDailyListコンテナ
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DailyList(dayOfWeek: selectedDay),
          ),

          const SizedBox(height: 24),

          // 曜日カードコンテナ
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _buildDayCards(ref, selectedDay),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }

  // 曜日カードを生成するメソッド
  List<Widget> _buildDayCards(WidgetRef ref, DayOfWeek selectedDay) {
    final now = DateTime.now();
    final dayCards = <Widget>[];

    for (var i = 0; i < DayOfWeek.values.length; i++) {
      final date = DateTime(now.year, now.month, now.day + i);
      final dayOfWeek = DayOfWeek.values.firstWhere(
        (day) => day.weekdayIndex == (date.weekday),
      );
      final isSelected = dayOfWeek == selectedDay;

      dayCards.add(
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: InkWell(
            onTap: () {
              // 選択された曜日を更新
              ref.read(selectedDayProvider.notifier).updateDay(dayOfWeek);
            },
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                color: isSelected ? Colors.purple.shade100 : Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dayOfWeek.displayValue,
                    style: TextStyle(
                      fontSize: 14,
                      color: isSelected ? Colors.purple : Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    date.day.toString(),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.purple : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // TODOAPI経由で取得するように変更する
                  if (i % 2 == 0)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 8,
                          color: isSelected
                              ? Colors.purple.shade300
                              : Colors.grey.shade400,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${i + 1} Meals',
                          style: TextStyle(
                            fontSize: 10,
                            color: isSelected
                                ? Colors.purple.shade700
                                : Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return dayCards;
  }
}
