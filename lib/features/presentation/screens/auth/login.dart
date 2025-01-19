import 'package:shopping/core/imports/imports.dart';
import 'package:shopping/features/presentation/screens/auth/widget/custom_button.dart';
import 'package:shopping/features/presentation/screens/auth/widget/custom_logo_auth.dart';
import 'package:shopping/features/presentation/screens/auth/widget/custom_text_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> signInWithEmailAndPassword() async {
    final l10n = AppLocalizations.of(context)!;
    if (formKey.currentState!.validate()) {
      try {
        final credential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        if (credential.user!.emailVerified) {
          if (mounted) {
            Navigator.of(context).pushReplacementNamed('/BottomNavBar');
          }
        } else {
          await FirebaseAuth.instance.currentUser!.sendEmailVerification();
          if (mounted) {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.error,
              title: l10n.loginErrorTitle,
              desc: l10n.verifyEmailMessage,
            ).show();
          }
        }
      } on FirebaseAuthException catch (e) {
        String errorMessage = l10n.genericErrorMessage;
        if (e.code == 'user-not-found') {
          errorMessage = l10n.userNotFoundErrorMessage;
        } else if (e.code == 'wrong-password') {
          errorMessage = l10n.incorrectPasswordErrorMessage;
        }
        if (mounted) {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            title: l10n.loginErrorTitle,
            desc: errorMessage,
          ).show();
        }
      }
    }
  }

  Future<void> signInWithGoogle() async {
    final l10n = AppLocalizations.of(context)!;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return;

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      if (mounted) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil('/BottomNavBar', (route) => false);
      }
    } catch (e) {
      if (mounted) {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          title: l10n.loginErrorTitle,
          desc: l10n.googleLoginFailedMessage,
        ).show();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            const CustomLogoAuth(),
            const SizedBox(height: 16),
            Center(
              child: Text(
                l10n.loginButton,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            Form(
              key: formKey,
              child: Column(
                children: [
                  CustomTextForm(
                    hintText: l10n.emailHint,
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return l10n.emptyFieldError;
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomTextForm(
                    hintText: l10n.passwordHint,
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return l10n.emptyFieldError;
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () async {
                      if (emailController.text.isEmpty) {
                        if (context.mounted) {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.error,
                            title: l10n.error,
                            desc: l10n.enterEmailBeforeForgotPassword,
                          ).show();
                        }
                        return;
                      }

                      try {
                        await FirebaseAuth.instance.sendPasswordResetEmail(
                            email: emailController.text);
                        if (context.mounted) {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.success,
                            title: l10n.success,
                            desc: l10n.checkEmailForReset,
                          ).show();
                        }
                      } catch (e) {
                        if (context.mounted) {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.error,
                            title: l10n.error,
                            desc: l10n.checkEmailError,
                          ).show();
                        }
                      }
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        l10n.forgotPassword,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            CustomButton(
              title: l10n.loginButton,
              onPressed: signInWithEmailAndPassword,
            ),
            const SizedBox(height: 16),
            CustomButton(
              title: l10n.googleLoginButton,
              onPressed: signInWithGoogle,
            ),
          ],
        ),
      ),
    );
  }
}
