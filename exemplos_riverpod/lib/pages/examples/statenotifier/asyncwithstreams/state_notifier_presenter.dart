import 'package:exemplos_riverpod/mock/stream_mock.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ! É preciso typar
final stateNotifierWithStreamsPresenter = StateNotifierProvider.autoDispose<
    StateNotifierWithStreamsPresenter, AsyncValue<int>>((ref) {
  final state = StateNotifierWithStreamsPresenter(ref.read);

  ref.onDispose(() => state.closeStreams());

  return state;
});

class StateNotifierWithStreamsPresenter
    extends StateNotifier<AsyncValue<int>?> {
  late StreamCounterMock counter;
  final Reader read;

  StateNotifierWithStreamsPresenter(this.read) : super(AsyncLoading()) {
    counter = read(counterMockProvider);

    counter.stream.listen(
      (event) {
        state = null;
      },
      onError: (e) {
        state = AsyncError('Erro ao carregar');
      },
    );
  }

  void add() async {
    state = AsyncLoading();
    counter.reiniciar();
  }

  void closeStreams() {
    counter.dispose();
  }
}
