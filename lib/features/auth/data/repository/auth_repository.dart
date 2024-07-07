import 'package:facebook/core/services/auth_service.dart';
import 'package:facebook/core/services/firebase_result.dart';
import 'package:facebook/core/services/firestore_service.dart';
import 'package:facebook/features/auth/data/models/user_model.dart';

class AuthRepository {
  final AuthService _authService;
  final FirestoreService _firestoreService;

  AuthRepository(this._authService, this._firestoreService);

  Future<FirebaseResult<void>> registerWithEmailAndPassword(
      UserModel model) async {
    try {
      final response = await _authService.registerWithEmailAndPassword(model);

      addUserProfileToDatabase(model);

      _authService.verifyEmail();

      return FirebaseResult.success(response);
    } catch (e) {
      return const FirebaseResult.failure('Something went wrong');
    }
  }

  Future<FirebaseResult<void>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final response =
          await _authService.signInWithEmailAndPassword(email, password);

      return FirebaseResult.success(response);
    } catch (e) {
      return const FirebaseResult.failure('Something went wrong');
    }
  }

  Future<FirebaseResult<void>> addUserProfileToDatabase(UserModel model) async {
    try {
      final response = await _firestoreService.addUserProfileToDatabase(model);

      return FirebaseResult.success(response);
    } catch (e) {
      return const FirebaseResult.failure('Something went wrong');
    }
  }

  Future<FirebaseResult<void>> resetPassword(String email) async {
    try {
      final response = await _authService.resetPasswordWithLink(email);

      return FirebaseResult.success(response);
    } catch (e) {
      return const FirebaseResult.failure('Something went wrong');
    }
  }

  Future<FirebaseResult<void>> signOut() async {
    try {
      final response = await _authService.signOut();

      return FirebaseResult.success(response);
    } catch (e) {
      return const FirebaseResult.failure('Something went wrong');
    }
  }
}
