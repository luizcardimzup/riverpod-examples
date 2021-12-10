import 'package:exemplos_riverpod/init_dependencies.dart';
import 'package:exemplos_riverpod/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateProviderPageDispose extends ConsumerWidget {
  const StateProviderPageDispose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterStateProviderAutoDispose.state);

    return Scaffold(
      appBar: AppBar(
        title: Text("State Provider"),
      ),
      body: Center(
        child: Text("Total ${counterState.state}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {counterState.state++},
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
