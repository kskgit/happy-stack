import 'package:auto_route/auto_route.dart';
import 'package:flutter_tutorial/routing/app_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'delete_button_controller.g.dart';

@riverpod
class DeleteButtonController extends _$DeleteButtonController {
  @override
  AsyncValue<void> build() {
    return const AsyncData(null);
  }

  Future<void> delete(StackRouter router) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final supabase = Supabase.instance.client;
      // TODO: 削除処理の実装
      await Future.delayed(const Duration(seconds: 1));
      await router.push(const HomeRoute());
    });
  }
}
