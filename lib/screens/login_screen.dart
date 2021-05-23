import 'package:flutter/material.dart';
import 'package:gtk_flutter/main.dart';
import 'package:gtk_flutter/src/authentication.dart';
import 'package:gtk_flutter/src/widgets.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            //Text("Hello", textDirection: TextDirection.ltr),
            SizedBox(height: 20),
            Consumer<ApplicationState>(
              builder: (context, appState, _) => Authentication(
                email: appState.email,
                loginState: appState.loginState,
                startLoginFlow: appState.startLoginFlow,
                verifyEmail: appState.verifyEmail,
                signInWithEmailAndPassword: appState.signInWithEmailAndPassword,
                cancelRegistration: appState.cancelRegistration,
                registerAccount: appState.registerAccount,
                signOut: appState.signOut,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
