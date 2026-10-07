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

  void setPasswordFunc() {
    /* spm: non-rebuild body erased */
  }

  void resetPasswordFunc() {
    /* spm: non-rebuild body erased */
  }

  void showPasswordFunc() {
    /* spm: non-rebuild body erased */
  }

  void showConfirmPasswordFunc() {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    final passNotifier = ValueNotifier<PasswordStrength?>(null);
    return Scaffold(
      backgroundColor: Theme.of(
        context,
      ).colorScheme.surface, // - BACKGROUND COLOR (DEFAULT)
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Theme.of(context).colorScheme.secondary,
          ),
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
        title: Text(
          'Password',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            letterSpacing: 8,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: passwordbox.isEmpty == true
          // NO PWD
          ? Container(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  Text(
                    'CREATE A PASSWORD',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Give your cards a password. Once you have set it up, you may use that password to safeguard your cards.',
                    style: TextStyle(
                      //cardTypeText
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.tertiary,
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
                      focusColor: Theme.of(context).colorScheme.primary,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        onPressed: showPasswordFunc,
                      ),
                    ),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary,
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
                      focusColor: Theme.of(context).colorScheme.primary,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Password again',
                      labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          hideConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        onPressed: showConfirmPasswordFunc,
                      ),
                    ),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: hideConfirmPassword,
                  ),
                  const SizedBox(height: 20),
                  PasswordStrengthChecker(
                    strength: passNotifier,
                    configuration: PasswordStrengthCheckerConfiguration(
                      borderColor: Theme.of(context).colorScheme.tertiary,
                      inactiveBorderColor: Theme.of(
                        context,
                      ).colorScheme.tertiary,
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
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          backgroundColor: Colors.transparent,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size.fromHeight(100),
                        ),
                        onPressed: setPasswordFunc,
                        child: Text(
                          'SET',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
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
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'If you wish to change your password or stop using it, you may do so here.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.tertiary,
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
                      focusColor: Theme.of(context).colorScheme.primary,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        onPressed: showPasswordFunc,
                      ),
                    ),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary,
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
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          backgroundColor: Colors.transparent,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size.fromHeight(100),
                        ),
                        onPressed: resetPasswordFunc,
                        child: Text(
                          'RESET',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
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
