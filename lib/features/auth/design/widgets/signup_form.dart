import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:facebook/features/auth/data/models/user_model.dart';
import 'package:facebook/features/auth/design/widgets/register_bloc_listener.dart';
import 'package:facebook/features/auth/logic/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:facebook/core/helper/spaces.dart';
import 'package:facebook/core/utils/app_constants.dart';
import 'package:facebook/core/widgets/custom_text_button.dart';
import 'package:facebook/core/widgets/custom_text_form_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool obscurePasswordTextValue = true;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> keySignup = GlobalKey();
    return RegisterBlocListener(
        child: Form(
      key: keySignup,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            hintText: 'First Name',
            controller: AppConstants.firstNameController,
          ),
          verticalSpace(16),
          CustomTextFormField(
            hintText: 'Last Name',
            prefixIcon: const Icon(Icons.person_rounded),
            controller: AppConstants.lastNameController,
          ),
          verticalSpace(16),
          CustomTextFormField(
            hintText: 'Phone Number',
            prefixIcon: const Icon(Icons.phone_android_sharp),
            controller: AppConstants.phoneController,
          ),
          verticalSpace(16),
          CustomTextFormField(
            hintText: 'Email Address',
            prefixIcon: const Icon(Icons.email_sharp),
            controller: AppConstants.emailController,
            textInputType: TextInputType.emailAddress,
          ),
          verticalSpace(16),
          CustomTextFormField(
            hintText: 'Password',
            isObscureText: obscurePasswordTextValue,
            prefixIcon: const Icon(Icons.lock_open_sharp),
            textInputType: TextInputType.visiblePassword,
            controller: AppConstants.passwordController,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obscurePasswordTextValue = !obscurePasswordTextValue;
                });
              },
              child: Icon(
                obscurePasswordTextValue
                    ? Icons.visibility_sharp
                    : Icons.visibility_off,
              ),
            ),
          ),
          verticalSpace(35),
          CustomTextButton(
            textButton: 'Sign Up',
            onPressed: () {
              if (keySignup.currentState!.validate()) {
                validateThenDoRegister(context);
              }
            },
          ),
          verticalSpace(10),
        ],
      ),
    ));
  }

  void validateThenDoRegister(BuildContext context) {
    AuthCubit.get(context).emitRegisterStates(
      UserModel(
        uId: FirebaseFirestore.instance.collection('users').doc().id,
        firstName: AppConstants.firstNameController.text,
        lastName: AppConstants.lastNameController.text,
        mobileNumber: AppConstants.phoneController.text,
        email: AppConstants.emailController.text,
        password: AppConstants.passwordController.text,
      ),
    );
  }
}
