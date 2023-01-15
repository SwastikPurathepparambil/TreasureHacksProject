import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_datastore/amplify_datastore.dart';

import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    // Add the following lines to your app initialization to add the DataStore plugin
    final datastorePlugin =
    AmplifyDataStore(modelProvider: ModelProvider.instance);
    await Amplify.addPlugin(datastorePlugin);
    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      safePrint(
          'Tried to reconfigure Amplify; this can occur when your app restarts on Android.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SizedBox.shrink(),
      ),
    );
  }
}