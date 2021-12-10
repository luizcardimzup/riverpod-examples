import 'dart:async';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final databaseProvider = Provider<Database>((ref) => Database());

class Database {
  int _fakeCounter = 0;

  Future<String> getFutureFakeString() async {
    return Future.delayed(Duration(seconds: 2), () {
      return 'Fake String from database ';
    });
  }

  Future<int> increment() async {
    return Future.delayed(Duration(seconds: 2), () {
      return _fakeCounter = _fakeCounter + 1;
    });
  }

  Stream<int> getRandomNumber() {
    //yield 1;
    return Stream.periodic(Duration(seconds: 1), (timer) {
      int rand = Random().nextInt(10);
      print(rand);
      return rand;
    });
  }
}
