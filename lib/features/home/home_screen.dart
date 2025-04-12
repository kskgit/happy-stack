import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/features/input_form/registration/registration_screen.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('トップページ'),
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
          // 上部のカードコンテナ
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildActivityCard(
                  'Water Plants',
                  'Log daily relax & unwind time',
                  Colors.green.shade100,
                  Colors.green,
                  Icons.spa,
                ),
                const SizedBox(width: 16),
                _buildActivityCard(
                  'Daily Exercises',
                  'You have Walked for 30mins',
                  Colors.blue.shade100,
                  Colors.blue,
                  Icons.directions_walk,
                ),
                const SizedBox(width: 16),
                _buildActivityCard(
                  'Your Daily Mood',
                  'You logged a Happy Mood',
                  Colors.amber.shade100,
                  Colors.amber,
                  Icons.mood,
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // 曜日カードコンテナ
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _buildDayCards(),
              ),
            ),
          ),

          const Spacer(),

          // 下部ナビゲーションバー
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(Icons.home, 'Home', true),
                _buildNavItem(Icons.person, 'Person', false),
                const SizedBox(width: 60), // 中央のボタン用スペース
                _buildNavItem(Icons.book, 'Guides', false),
                _buildNavItem(Icons.chat_bubble_outline, 'Chat', false),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: const RegistrationScreen(),
              );
            },
          );
        },
        backgroundColor: Colors.purple.shade300,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  // アクティビティカードを生成するメソッド
  Widget _buildActivityCard(
    String title,
    String subtitle,
    Color bgColor,
    Color textColor,
    IconData icon,
  ) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
              color: textColor.withOpacity(0.8),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: textColor,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Text('Start Now'),
          ),
        ],
      ),
    );
  }

  // 曜日カードを生成するメソッド
  List<Widget> _buildDayCards() {
    final now = DateTime.now();
    final dayCards = <Widget>[];

    for (var i = 0; i < 7; i++) {
      final date = DateTime(now.year, now.month, now.day + i);
      var dayIndex = date.weekday - 1; // 0 = 月曜日, 6 = 日曜日

      // 日曜日の場合は配列の最後の要素を使用
      if (dayIndex == 7) dayIndex = 6;

      final dayOfWeek = DayOfWeek.values[dayIndex];

      dayCards.add(
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Container(
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white,
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
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date.day.toString(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                if (i % 2 == 0)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.grey.shade400,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${i + 1} Meals',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      );
    }

    return dayCards;
  }

  // ナビゲーションアイテムを生成するメソッド
  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isActive ? Colors.purple.shade300 : Colors.grey,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: isActive ? Colors.purple.shade300 : Colors.grey,
          ),
        ),
      ],
    );
  }
}
