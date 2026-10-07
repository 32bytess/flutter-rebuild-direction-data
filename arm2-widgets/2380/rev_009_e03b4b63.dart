// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  @override
  void initState() {
    super.initState();
    passwordbox = fixturePasswordbox;
    hidePassword = fixtureHidePassword;
    hideConfirmPassword = fixtureHideConfirmPassword;
    password = fixturePassword;
    confirmPassword = fixtureConfirmPassword;
    resetPassword = fixtureResetPassword;
  }

  late Box<dynamic> passwordbox;

  late bool hidePassword;

  late bool hideConfirmPassword;

  late TextEditingController password;

  late TextEditingController confirmPassword;

  late TextEditingController resetPassword;

  void showPasswordFunc() {
    /* spm: non-rebuild body erased */
  }

  void showConfirmPasswordFunc() {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final passNotifier = ValueNotifier<PasswordStrength?>(null);
    return Scaffold(
      backgroundColor:
          theme.colorScheme.surface, // - BACKGROUND COLOR (DEFAULT)
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: theme.colorScheme.secondary,
            ),
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
          ),
        ],
        title: Text(
          'Password',
          style: theme.textTheme.bodyLarge?.copyWith(
            fontSize: 17,
            fontWeight: FontWeight.w900,
            letterSpacing: 5,
            color: theme.colorScheme.tertiary,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: theme.colorScheme.surface,
      ),
      body: passwordbox.isEmpty == true
          // NO PWD
          ? Container(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  Text(
                    'CREATE A PASSWORD',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: theme.colorScheme.inverseSurface,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Give your cards a password. Once you have set it up, you may use that password to safeguard your cards.',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      //cardTypeText
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: theme.colorScheme.inverseSurface,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 2.0),
                      ),
                      focusColor: theme.colorScheme.primary,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: theme.colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Password',
                      labelStyle: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.secondary,
                      ),
                      prefixIcon: Icon(
                        Icons.password,
                        color: theme.colorScheme.secondary,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: theme.colorScheme.secondary,
                        ),
                        onPressed: showPasswordFunc,
                      ),
                    ),
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.tertiary,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: hidePassword,
                    onChanged: (value) {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: confirmPassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 2.0),
                      ),
                      focusColor: theme.colorScheme.primary,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: theme.colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Password again',
                      labelStyle: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.secondary,
                      ),
                      prefixIcon: Icon(
                        Icons.password,
                        color: theme.colorScheme.secondary,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          hideConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: theme.colorScheme.secondary,
                        ),
                        onPressed: showConfirmPasswordFunc,
                      ),
                    ),
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.inverseSurface,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: hideConfirmPassword,
                  ),
                  const SizedBox(height: 20),
                  PasswordStrengthChecker(
                    strength: passNotifier,
                    configuration: PasswordStrengthCheckerConfiguration(
                      borderColor: theme.colorScheme.tertiary,
                      inactiveBorderColor: theme.colorScheme.tertiary,
                      borderWidth: 1,
                      statusWidgetAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Bounceable(
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                    child: SizedBox(
                      height: 70,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.all(15),
                          side: BorderSide(color: theme.colorScheme.primary),
                          backgroundColor: Colors.transparent,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size.fromHeight(100),
                        ),
                        onPressed: () {
                          /* spm: non-rebuild body erased */
                        },
                        child: Text(
                          'SET',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.inverseSurface,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          //PWD
          : Container(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  Text(
                    'RESET PASSWORD',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: theme.colorScheme.inverseSurface,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'If you wish to change your password or stop using it, you may do so here.',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: theme.colorScheme.inverseSurface,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: resetPassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 2.0),
                      ),
                      focusColor: theme.colorScheme.primary,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: theme.colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Password',
                      labelStyle: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.inverseSurface,
                      ),
                      prefixIcon: Icon(
                        Icons.password,
                        color: theme.colorScheme.secondary,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: theme.colorScheme.secondary,
                        ),
                        onPressed: showPasswordFunc,
                      ),
                    ),
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.inverseSurface,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: hidePassword,
                  ),
                  const SizedBox(height: 20),
                  Bounceable(
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                    child: SizedBox(
                      height: 70,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.all(15),
                          side: BorderSide(color: theme.colorScheme.primary),
                          backgroundColor: Colors.transparent,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size.fromHeight(100),
                        ),
                        onPressed: () {
                          /* spm: non-rebuild body erased */
                        },
                        child: Text(
                          'RESET',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.inverseSurface,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
























// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
