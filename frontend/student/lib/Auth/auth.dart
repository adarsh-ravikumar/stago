import 'package:flutter/material.dart';
import 'package:student_frontend/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

//

Future<bool> signInWithMicrosoft() async {
  final response = await supabase.auth.signInWithOAuth(
    OAuthProvider.azure,
    scopes: 'email profile openid offline_access',
  );

  if (response == true) {
    // Handle successful sign-in
    debugPrint("Successful Login");
    return true;
  } else {
    debugPrint("Login failed");
    return false;
  }
}

Future<bool> signOut() async {
  await Future.delayed(const Duration(seconds: 1));
  await supabase.auth.signOut();
  debugPrint("Logged out successfully");

  return true;
}
