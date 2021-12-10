import 'package:exemplos_riverpod/init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterStateProvider.state);

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
