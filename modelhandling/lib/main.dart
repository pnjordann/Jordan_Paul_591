import 'package:flutter/material.dart';
import 'package:modelhandling/screen/product_screen.dart';
import 'package:modelhandling/screen/student_list_screen.dart';
import 'package:modelhandling/screen/student_screen%20(2).dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://iiccbiejaieofjxghmsl.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlpY2NiaWVqYWllb2ZqeGdobXNsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzExNzc0MTgsImV4cCI6MjA4Njc1MzQxOH0.V4ZdU_O5dXl_X4awPM_bt_dko6-V_Ky7smYbkw9TxWk');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: StudentPage(),
    );

  }
}
