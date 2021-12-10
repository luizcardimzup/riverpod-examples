import 'dart:async';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamCounter = StreamProvider.autoDispose<int>((ref) {
  ref.onDispose(() {
    print("Fechou stream");
    StreamCounterMock().dispose();
  });

  return StreamCounterMock().stream;
});

final counterMockProvider = Provider.autoDispose<StreamCounterMock>((ref) {
  final stream = StreamCounterMock();
  return stream;
});

class StreamCounterMock {
  late StreamController<int> _controller;
  int _contador = 0;
  //late Sink<int> input;

  Stream<int> get stream => _controller.stream;

  StreamCounterMock() {
    this._controller = StreamController<int>.broadcast();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (!_controller.isClosed) {
        _contador++;
        _controller.sink.add(_contador);
      }
    });
  }

  void reiniciar() {
    print('Rodou');
    _contador = 0;
    _controller.sink.add(_contador);
  }

  void dispose() {
    print('Fechou StreamController');
    _controller.close();
  }
}
