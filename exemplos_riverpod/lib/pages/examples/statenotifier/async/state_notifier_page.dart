import 'package:exemplos_riverpod/main.dart';
import 'package:exemplos_riverpod/pages/examples/statenotifier/async/state_notifier_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateNotifierPage extends ConsumerWidget {
  const StateNotifierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(builder: (context, ref, child) {
              return ref.watch(stateNotifierPresenter).when(
                  data: (value) => Text(value.toString()),
                  error: (error, stack) => Text("Erro"),
                  loading: () => CircularProgressIndicator());
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => ref.read(stateNotifierPresenter.notifier).add(),
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
