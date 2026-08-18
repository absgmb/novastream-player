import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid || Platform.isIOS) {
    await MobileAds.instance.initialize();
  }
  runApp(const NovaStreamApp());
}

class NovaStreamApp extends StatelessWidget {
  const NovaStreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NovaStream Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const NovaHomePage(),
    );
  }
}

class NovaHomePage extends StatelessWidget {
  const NovaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050507),
      appBar: AppBar(
        title: const Text('NovaStream Player'),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text(
          'NovaStream Player\n\nFlutter + native media engine foundation',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
