import 'package:exemplos_riverpod/main.dart';
import 'package:exemplos_riverpod/pages/examples/statenotifier/asyncwithstreams/state_notifier_page.dart';
import 'package:exemplos_riverpod/pages/examples/futureprovider/future_provider_page.dart';
import 'package:exemplos_riverpod/pages/examples/provider/provider_example_page.dart';
import 'package:exemplos_riverpod/pages/examples/stateprovider/state_provider_page%20_dispose.dart';
import 'package:exemplos_riverpod/pages/examples/stateprovider/state_provider_page.dart';
import 'package:exemplos_riverpod/pages/examples/statenotifier/async/state_notifier_page.dart';
import 'package:exemplos_riverpod/pages/examples/streamprovider/stream_provider_page.dart';
import 'package:exemplos_riverpod/pages/examples/others/stream_with_provider_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage({required this.title}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(this.title)),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Basic Provider'),
              ElevatedButton(
                child: Text('Provider'),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => ProviderExamplePage()))
                },
              ),
              Text('State Provider'),
              ElevatedButton(
                child: Text('State Provider'),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => StateProviderPage()))
                },
              ),
              ElevatedButton(
                child: Text('State Provider - Auto Dispose'),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => StateProviderPageDispose()))
                },
              ),
              Text('Future Provider'),
              ElevatedButton(
                child: Text('Future Provider'),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => FutureProviderPage()))
                },
              ),
              Text('Stream Provider'),
              ElevatedButton(
                child: Text('Stream Provider'),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => StreamProviderPage()))
                },
              ),
              Text('State Notifier Provider'),
              ElevatedButton(
                child: Text('State Notifier Provider - Auto Dispose'),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => StateNotifierPage()))
                },
              ),
              ElevatedButton(
                child: Text('State Notifier Provider (Stream) - Auto Dispose'),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => StateNotifierWithStreamsPage()))
                },
              ),
              Text('Others'),
              ElevatedButton(
                child: Text('Stream with Provider'),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => StreamWithProviderPage()))
                },
              )
            ],
          ),
        ));
  }
}
