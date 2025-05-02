// supabaseからのレスポンスはdynamic型のため
// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/features/home/domain/happiness.dart';
import 'package:flutter_tutorial/providers/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'daily_list_state.g.dart';

// TODO(me): user id未指定のため追加する
@riverpod
Future<List<Happiness>> dailyListState(Ref ref, int dayOfWeek) async {
  final supabase = ref.read(supabaseClientProvider);
  final response =
      await supabase.from('happiness').select().order('id', ascending: true);

  final filteredList = (response as List)
      .where((item) => (item['day_of_week'] as int) & dayOfWeek > 0)
      .where((item) => (item['day_of_week'] as int) != 0)
      .map((item) => Happiness.fromJson(item as Map<String, dynamic>))
      .toList();

  return filteredList;
}
