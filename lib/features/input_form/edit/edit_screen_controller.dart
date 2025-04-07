import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/features/home/domain/happiness.dart';
import 'package:flutter_tutorial/providers/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_screen_controller.g.dart';

@riverpod
Future<Happiness> happinessDetailState(Ref ref, int happinessId) async {
  final supabase = ref.read(supabaseClientProvider);
  final response =
      await supabase.from('happiness').select().eq('id', happinessId).single();
  return Happiness.fromJson(response);
}
