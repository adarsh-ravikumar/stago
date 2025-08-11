import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:student_frontend/Auth/auth.dart";
import "package:student_frontend/Components/o_auth_card.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool signedIn;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text("Login", style: GoogleFonts.lora(fontSize: 64)),
            ), // Serif
            Text(
              "Please login using your college ID only.",
              style: GoogleFonts.inter(fontSize: 16, color: Colors.grey),
            ), // Sans Serif and grey
            SizedBox(height: 50),
            Center(
              child: TextButton(
                onPressed: () async => {
                  // Navigator pushReplacement Function to Home Page on authentication
                  signedIn = await signInWithMicrosoft(),
                  if (mounted && signedIn)
                    {
                      Navigator.pushReplacementNamed(context, '/home'),
                      await Future.delayed(const Duration(seconds: 2)),
                      if (context.mounted) Navigator.of(context).pop(),
                    },
                },
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16),
                  child: OAuthCard(imageUri: "lib/Assets/Logos/microsoft.png"),
                ),
              ),
            ),
            // Outlook
          ],
        ),
      ),
    );
  }
}
