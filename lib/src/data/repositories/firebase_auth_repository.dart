import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthRepository {
  AuthRepository(this._auth);

  final FirebaseAuth _auth;

  Stream<User?> authStateChanges() => _auth.authStateChanges();

  User? get currentUser => _auth.currentUser;

  Future<void> signInAnonymously() {
    return _auth.signInAnonymously();
  }

  Future<void> signInWithEmailAndPassword(String email, String password) {
    final userEmail = '$email+admin@domain.com';
    return _auth.signInWithEmailAndPassword(
      email: userEmail,
      password: password,
    );
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) {
    final userEmail = '$email+admin@domain.com';
    return _auth.createUserWithEmailAndPassword(
      email: userEmail,
      password: password,
    );
  }

  Future<void> signOut() {
    return _auth.signOut();
  }
}

final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref.watch(firebaseAuthProvider));
});

final authStateChangesProvider = StreamProvider<User?>((ref) {
  return ref.watch(authRepositoryProvider).authStateChanges();
});
