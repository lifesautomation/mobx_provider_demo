import 'package:flutter/material.dart';
import 'package:mobx_demo/declare/declare.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //TODO: Most important thing you need to remember is adding MultiProvider like this
  runApp(MultiProvider(providers: <Provider<dynamic>>[
    Provider<Declare>(create: (_) => Declare()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Declare declare = context.watch<Declare>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobx Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            //TODO: Add Observer like this wherever you want to change state when declare variable changed
            Observer(
              builder: (_) => Text(
                '${declare.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => declare.counter++,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
