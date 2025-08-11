import 'package:flutter/material.dart';
import 'package:student_frontend/Auth/auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool signedOut;
    return Scaffold(
      appBar: AppBar(),
      body: TextButton(
        onPressed: () async => {
          // Navigator pushReplacement to Login Screen
          await Future.delayed(Duration.zero),

          signedOut = await signOut(),
          if (mounted && (signedOut))
            {
              Navigator.pushReplacementNamed(context, '/login'),
              await Future.delayed(const Duration(seconds: 2)),
              if (context.mounted) Navigator.of(context).pop(),
            }, // Call the signOut function from auth.dart
        },
        child: Text("Logout (for now)"),
      ),
    );
  }
}
