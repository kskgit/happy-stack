import 'package:flutter/material.dart';
import 'package:flutter_tutorial/edit/edit_screen.dart';
import 'package:flutter_tutorial/home/day_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('トップページ'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: '月'),
              Tab(text: '火'),
              Tab(text: '水'),
              Tab(text: '木'),
              Tab(text: '金'),
              Tab(text: '土'),
              Tab(text: '日'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DayView(),
            DayView(),
            DayView(),
            DayView(),
            DayView(),
            DayView(),
            DayView(),
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
