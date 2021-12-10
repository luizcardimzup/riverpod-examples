import 'package:exemplos_riverpod/mock/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final textExemplo = Provider((ref) => 'Exempo de texto no Riverpod');

final counterStateProviderAutoDispose =
    StateProvider.autoDispose<int>((_) => 0);

final counterStateProvider = StateProvider<int>((_) => 0);

final futureUserProvider = FutureProvider.autoDispose(
    (ref) async => ref.read(databaseProvider).increment());

final streamRandProvider =
    StreamProvider<int>((ref) => ref.read(databaseProvider).getRandomNumber());
