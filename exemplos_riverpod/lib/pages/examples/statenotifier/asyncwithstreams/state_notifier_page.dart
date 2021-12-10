import 'package:exemplos_riverpod/main.dart';
import 'package:exemplos_riverpod/pages/examples/statenotifier/async/state_notifier_presenter.dart';
import 'package:exemplos_riverpod/pages/examples/statenotifier/asyncwithstreams/state_notifier_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateNotifierWithStreamsPage extends ConsumerWidget {
  const StateNotifierWithStreamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Notifier With Streams"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(builder: (context, ref, child) {
              return ref.watch(stateNotifierWithStreamsPresenter).when(
                  data: (value) => Text(value.toString()),
                  error: (error, stack) => Text("Erro"),
                  loading: () => CircularProgressIndicator());
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async =>
            ref.read(stateNotifierWithStreamsPresenter.notifier).add(),
        child: Icon(Icons.restart_alt),
      ),
    );
  }
}
