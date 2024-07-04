import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:facebook/features/auth/data/models/user_model.dart';
import 'package:facebook/features/auth/logic/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialState());

  static AuthCubit get(context) => BlocProvider.of(context);

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(LoadingState());
    try {
      emit(LoadingState());
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      emit(SignInErrorState(errMessage: e.toString()));
    } catch (e) {
      emit(SignInErrorState(errMessage: e.toString()));
    }
  }

  Future<void> registerWithEmailAndPassword(UserModel model) async {
    try {
      emit(LoadingState());
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: model.email,
        password: model.password,
      )
          .then((value) async {
        await addUserProfileToDatabase(model);
      });
      await verifyEmail();
      emit(RegisterSuccessState());
    } on FirebaseAuthException catch (e) {
      emit(RegisterErrorState(errMessage: e.toString()));
    } catch (e) {
      emit(RegisterErrorState(errMessage: e.toString()));
    }
  }

  Future<void> addUserProfileToDatabase(UserModel model) async {
    UserModel userModel = UserModel(
      uId: model.uId,
      firstName: model.firstName,
      lastName: model.lastName,
      mobileNumber: model.mobileNumber,
      email: model.email,
      password: model.password,
      image:
          'https://www.modelfactory.in/assets/frontend/images/model/default.jpg',
      coverImage:
          'https://th.bing.com/th/id/OIP.pnsnllWHz2xGWm2-uUd9xwAAAA?rs=1&pid=ImgDetMain',
    );

    FirebaseFirestore.instance
        .collection('users')
        .doc(model.uId)
        .set(userModel.toJson())
        .then(
          (value) {},
        );
  }

  Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  Future<void> resetPasswordWithLink(String email) async {
    emit(LoadingState());

    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);

    emit(ResetPasswordState());
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
