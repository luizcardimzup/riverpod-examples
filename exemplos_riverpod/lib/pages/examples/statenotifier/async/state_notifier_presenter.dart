import 'dart:async';
import 'dart:math';

import 'package:exemplos_riverpod/mock/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ! É preciso typar
final stateNotifierPresenter =
    StateNotifierProvider.autoDispose<StateNotifierPresenter, AsyncValue<int>>(
        (ref) => StateNotifierPresenter(ref.read));

class StateNotifierPresenter extends StateNotifier<AsyncValue<int>> {
  StateNotifierPresenter(this.read) : super(AsyncLoading()) {
    _init();
    AsyncData(0);
  }

  final Reader read;

  void _init() async {
    //await read(databaseProvider)
    state = AsyncData(0);
  }

  void add() async {
    state = AsyncLoading();
    int count = await read(databaseProvider).increment();
    state = AsyncData(count);
  }
}
