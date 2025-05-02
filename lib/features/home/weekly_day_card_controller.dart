import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/providers/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weekly_day_card_controller.g.dart';

// TODO(me): user id未指定のため追加する
@riverpod
Future<int> weeklyDayCardController(
  Ref ref,
  DayOfWeek dayOfWeek,
) async {
  final supabase = ref.read(supabaseClientProvider);
  final data = await supabase
      .from('happiness')
      .select()
      .eq('day_of_week', dayOfWeek.value)
      .count();
  return data.count;
}
