import 'package:exemplos_riverpod/init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderExamplePage extends ConsumerWidget {
  const ProviderExamplePage() : super();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(textExemplo);

    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Provider'),
      ),
      body: Center(
        child: Text(value),
      ),
    );
  }
}
