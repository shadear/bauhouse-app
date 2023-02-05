import 'package:bauhouse/src/config/config.dart';
import 'package:bauhouse/src/screens/widgets/view_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountTypePage extends StatelessWidget {
  const AccountTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Account Type'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ViewInfo(
                title: 'Select your account type',
                subTitle: 'Account type can not be changed after registering',
                icon: Icons.person_outline_rounded,
              ),
              Wrap(
                direction: Axis.horizontal,
                runSpacing: 16,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.pushNamed(AppRoute.register.name);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(52),
                    ),
                    child: const Text('Customer'),
                  ),
                  const SizedBox(height: 16),
                  OutlinedButton(
                    onPressed: () {
                      context.pushNamed(AppRoute.register.name);
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(52),
                    ),
                    child: const Text('Supplier'),
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
