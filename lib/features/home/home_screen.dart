import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/features/edit/edit_screen.dart';
import 'package:flutter_tutorial/features/home/day_view.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('トップページ'),
          bottom: TabBar(
            isScrollable: true,
            tabs: DayOfWeek.values
                .map((data) => Text(data.displayValue))
                .toList(),
          ),
        ),
        body: TabBarView(
          children:
              // TODODayViewに曜日を渡す
              DayOfWeek.values.map((data) => const DayView()).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: const EditScreen(),
                );
              },
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
