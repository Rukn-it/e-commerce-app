import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trailing_e_commerce_app/core/core.dart';

import 'providers/api_consumer_provider.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiConsumer = ref.watch(apiConsumerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('API Consumer with Riverpod'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              final response = await apiConsumer
                  .get(EndPoint.category);
              print(response);
            } on ServerException catch (e) {
              print(
                  "=========================================================================================");
              print(e.errorModel.statusCode);
              print(e.errorModel.message);
              print(e.errorModel.error);
              print(
                  "=========================================================================================");
            }
          },
          child: Text('Fetch Data'),
        ),
      ),
    );
  }
}
