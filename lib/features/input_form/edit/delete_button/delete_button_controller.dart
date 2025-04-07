import 'package:flutter_tutorial/providers/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
      final supabase = ref.read(supabaseClientProvider);
      await supabase.from('happiness').delete().eq('id', happinessId);
    });
  }
}
