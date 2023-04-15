import 'package:docs_clone/features/auth/repository/auth_repository.dart';
import 'package:docs_clone/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  void signInWitbGoogle(WidgetRef ref) {
    ref.watch(authRepositoryProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 220,
          // width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 206, 208, 211),
                blurRadius: 20,
                offset: Offset(2, 2), // Shadow position
              ),
            ],
            color: Pallete.whiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: () => signInWitbGoogle(ref),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(MdiIcons.google),
                  SizedBox(width: 10),
                  Text(
                    "Sign In With Google",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
