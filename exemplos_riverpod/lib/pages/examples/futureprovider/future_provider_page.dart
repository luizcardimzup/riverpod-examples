import 'package:exemplos_riverpod/init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Provider"),
      ),
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          return ref.watch(futureUserProvider).when(
              data: (value) => Text(value.toString()),
              error: (error, stack) => Text("Erro"),
              loading: () => CircularProgressIndicator());
        }),
      ),
    );
  }
}
