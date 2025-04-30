import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/features/home/daily_card.dart';
import 'package:flutter_tutorial/features/home/daily_list_state.dart';
import 'package:shimmer/shimmer.dart';

class DailyList extends ConsumerWidget {
  const DailyList({
    required this.dayOfWeek,
    super.key,
  });
  final DayOfWeek dayOfWeek;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ref.watch(dailyListStateProvider(dayOfWeek.value)).when(
            loading: () => ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) => const SkeletonItem(),
            ),
            error: (error, stackTrace) =>
                Center(child: Text('エラーが発生しました: $error')),
            data: (happinessList) => ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(16),
              itemCount: happinessList.length,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemBuilder: (context, index) => DailyCard(
                happiness: happinessList[index],
              ),
            ),
          ),
    );
  }
}

// スケルトンアイテムのウィジェット
class SkeletonItem extends StatelessWidget {
  const SkeletonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            color: const Color(0xFFB5E0FF),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
