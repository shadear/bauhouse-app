import 'package:bauhouse/src/config/config.dart';
import 'package:bauhouse/src/data/data.dart';
import 'package:bauhouse/src/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authRepository = ref.watch(authRepositoryProvider);
    final formKey = useMemoized(GlobalKey<FormState>.new, const []);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ViewInfo(
                title: 'Login to your account',
                subTitle: 'Enter your phone number and your password',
                icon: Icons.person_outline_rounded,
              ),
              Wrap(
                direction: Axis.horizontal,
                runSpacing: 24,
                children: [
                  Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Wrap(
                      direction: Axis.horizontal,
                      runSpacing: 16,
                      children: [
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            label: Text('Phone Number'),
                            hintText: '770 000 0000',
                          ),
                        ),
                        TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            label: Text('Password'),
                            hintText: '******',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    runSpacing: 16,
                    direction: Axis.horizontal,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          authRepository.signInWithEmailAndPassword(
                            emailController.text,
                            passwordController.text,
                          );
                          context.goNamed(AppRoute.products.name);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(52),
                        ),
                        child: const Text('Login'),
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () {
                          context.pushNamed(AppRoute.register.name);
                        },
                        style: TextButton.styleFrom(
                          minimumSize: const Size.fromHeight(52),
                        ),
                        child: const Text("Don't have an account? Register"),
                      ),
                    ],
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
