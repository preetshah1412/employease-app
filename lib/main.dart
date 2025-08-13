import 'package:flutter/material.dart';
// ignore: unused_import
import 'splash_screen.dart'; // Import the splash screen
import 'dart:async'; // For Future.delayed
import 'registration_page.dart'; // Import the registration page
import 'verify_page.dart'; // Import the verification page
import 'forgot_page.dart';
import 'login_page.dart'; // Import the login page
import 'home_page.dart'; // Import the home page
import 'employee_main_page.dart';
import 'view_all_employee_page.dart'; // Import the view all employee page
import 'add_employee_page.dart'; // Import the add employee page
import 'employee_detail_page.dart'; // Import the employee detail page
import 'excel_upload_page.dart'; // Import the excel upload page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AddEmployeePage(),
    );
  }
}

// MyHomePage remains unchanged, but we'll use it after the splash
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
