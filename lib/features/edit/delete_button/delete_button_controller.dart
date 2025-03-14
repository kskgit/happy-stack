import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'delete_button_controller.g.dart';

@riverpod
class DeleteButtonController extends _$DeleteButtonController {
  @override
  FutureOr<void> build() {
    // nothing to do
  }

  Future<void> delete(int happinessId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final supabase = Supabase.instance.client;
      await supabase.from('stocks').delete().eq('id', happinessId);
    });
  }
}
