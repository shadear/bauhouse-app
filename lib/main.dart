import 'package:bauhouse/src/app.dart';
import 'package:bauhouse/src/config/error/error.dart';
import 'package:bauhouse/src/config/firebase/firebase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  registerErrorHandlers();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
