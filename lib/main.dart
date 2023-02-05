import 'package:bauhouse/src/app.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
