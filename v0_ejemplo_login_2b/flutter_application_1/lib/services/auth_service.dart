import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthService {
  final FirebaseAuth _auth;

  AuthService(this._auth);

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<String?> signIn({
    required String email,
    required String password,
  }) async {
    try {
          print(email);
                    print(password);


      await _auth.signInWithEmailAndPassword(
        
        email: email,
        password: password,
      );
                                print( password);

                          print( password);

      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      // Actualizar el nombre del usuario
      await _auth.currentUser?.updateDisplayName(name);
      
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  void signOut() {}

 

}