import 'package:firebase_auth/firebase_auth.dart';

String getFailure(FirebaseException e) {
  switch (e.code) {
    case 'weak-password':
      return 'The password provided is too weak.';

    case 'email-already-in-use':
      return 'The account already exists for that email.';

    case 'user-not-found':
      return 'No user found for that email.';

    case 'wrong-password':
      return 'Wrong password provided for that user.';

    default:
  }
  return '';
}
