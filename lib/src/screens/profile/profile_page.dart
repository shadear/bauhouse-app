import 'package:bauhouse/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/data.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authRepository = ref.read(authRepositoryProvider);
    const pickedFile = null;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile'),
        actions: [
          IconButton(
            onPressed: () {
              authRepository.signOut();
            },
            icon: const Icon(Icons.logout_rounded),
          )
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 72,
                  vertical: 52,
                ),
                child: pickedFile == null
                    ? Image.asset("assets/images/image.png",
                        height: 224, width: 224)
                    : Image.file(pickedFile, height: 100, width: 100),
              ),
              Wrap(
                runSpacing: 16,
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                children: [
                  Wrap(
                    direction: Axis.horizontal,
                    runSpacing: 16,
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Company Name'),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Location'),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // authRepository.signInAnonymously();
                      // context.goNamed(AppRoute.products.name);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(52),
                    ),
                    child: const Text('Edit Details'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
