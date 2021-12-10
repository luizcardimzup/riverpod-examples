import 'package:exemplos_riverpod/main.dart';
import 'package:exemplos_riverpod/mock/stream_mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StreamWithProviderPage extends ConsumerWidget {
  const StreamWithProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stream Provider"),
        ),
        body: Center(
          child: StreamBuilder<int>(
              stream: ref.watch(counterMockProvider).stream,
              initialData: 0,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Erro');
                } else {
                  return Text(snapshot.data.toString());
                }
              }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => ref.read(counterMockProvider).reiniciar(),
          child: Icon(Icons.restore),
        ));
  }
}
