import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'day_view_state.g.dart';

@riverpod
Future<Object> dayViewState(Ref ref) async {
  final supabase = Supabase.instance.client;
  return await supabase.from('stocks').select();
}
