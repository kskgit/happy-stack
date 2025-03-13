// supabaseからのレスポンスはdynamic型のため
// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/features/home/domain/happiness.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'daily_list_state.g.dart';

@riverpod
Future<List<Happiness>> dailyListState(Ref ref) async {
  final supabase = Supabase.instance.client;
  final response = await supabase.from('stocks').select();

  // Supabaseから取得したデータをHappinessクラスのリストに変換
  return (response as List)
      .map(
        (item) => Happiness.fromJson(item as Map<String, dynamic>),
      )
      .toList();
}
