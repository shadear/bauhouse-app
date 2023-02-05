import 'package:bauhouse/src/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Language'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          children: [
            const ViewInfo(
              title: 'Choose Your Preferred Language',
              subTitle: 'Please select your language',
              icon: Icons.translate_rounded,
            ),
            Wrap(
              direction: Axis.horizontal,
              runSpacing: 16,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.goNamed('login');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(52),
                  ),
                  child: const Text('English'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.push('/login');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(52),
                  ),
                  child: const Text('کوردی'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed('login');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(52),
                  ),
                  child: const Text('العربیة'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
