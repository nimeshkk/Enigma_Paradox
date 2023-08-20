
import 'package:enigma_paradox/signin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), 
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
  colorScheme: ColorScheme.dark().copyWith(
    primary: Color.fromARGB(217, 255, 234, 0),
    secondary: Color.fromARGB(255, 236, 225, 105),
    onPrimary: Color.fromARGB(255, 255, 255, 255),
    onPrimaryContainer: Color.fromARGB(255, 255, 255, 255), 
  ),
  useMaterial3: true,
),

      home: LoginPage(),
    );
  }
}


