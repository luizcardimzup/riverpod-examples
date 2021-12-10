import 'package:exemplos_riverpod/main.dart';
import 'package:exemplos_riverpod/mock/stream_mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StreamProviderPage extends ConsumerWidget {
  const StreamProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.read(streamCounter);

    return Scaffold(
      appBar: AppBar(
        title: Text("Stream Provider"),
      ),
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          return ref.watch(streamCounter).when(
              data: (value) => Text(value.toString()),
              error: (error, stack) => Text("Erro"),
              loading: () => CircularProgressIndicator());
        }),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => () {},
      //   child: Icon(Icons.restore),
      // ),
    );
  }
}
