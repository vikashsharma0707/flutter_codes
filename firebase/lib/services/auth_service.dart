import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign Up
  Future<UserCredential> signUp(String email, String password) async {
    UserCredential userCred = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    await userCred.user?.sendEmailVerification();
    return userCred;
  }

  // Sign In
  Future<UserCredential> signIn(String email, String password) async {
    return await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // Reset Password
  Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  // Sign Out
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
