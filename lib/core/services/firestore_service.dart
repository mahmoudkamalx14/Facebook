// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:facebook/features/auth/data/models/user_model.dart';

class FirestoreService {
  final FirebaseFirestore firestore;
  FirestoreService(this.firestore);

  Future<void> addUserProfileToDatabase(UserModel model) async {
    firestore.collection('users').doc(model.uId).set(model.toJson());
  }
}
