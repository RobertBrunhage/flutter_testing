import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'user.dart';

final userProvider = ChangeNotifierProvider<User>((ref) {
  //return User(24, "Greta");
});

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing application"),
      ),
      body: Center(
        child: Consumer(
          builder: (context, watch, child) {
            final user = watch(userProvider);

            return Text(
              '${user.name} age ${user.age}',
              style: Theme.of(context).textTheme.headline1.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read(userProvider).birthday();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
