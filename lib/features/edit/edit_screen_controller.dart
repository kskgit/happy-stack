import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/features/home/domain/happiness.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'edit_screen_controller.g.dart';

@riverpod
Future<Happiness> happinessDetailState(Ref ref, int happinessId) async {
  final supabase = Supabase.instance.client;
  final response =
      await supabase.from('stocks').select().eq('id', happinessId).single();
  return Happiness.fromJson(response);
}
