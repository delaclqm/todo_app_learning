import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/auth/value_objects.dart';
import 'firebase_user_mapper.dart';

@lazySingleton
@RegisterAs(IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;

  FirebaseAuthFacade(
    this._firebaseAuth, 
    this._googleSignIn,
    this._firebaseUserMapper
  );

  @override
  Future<Option<User>> getSignedInUser() async {
    return _firebaseAuth
      .currentUser()
      .then((u) => optionOf(_firebaseUserMapper.toDomain(u)));
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({@required EmailAddress emailAddress, @required Password password}) async {
    // We will grab the email and password, which should be valid, but just in case crash
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();

    // Try to register with the email and password
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: emailAddressString, password: passwordString);
      // We need a return type, so return unit which is essentially void
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        // We should never return this error, but just in case we will
        // handle it
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({@required EmailAddress emailAddress, @required Password password}) async {
    // We will grab the email and password, which should be valid, but just in case crash
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();

    // Try to register with the email and password
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: emailAddressString, password: passwordString);
      // We need a return type, so return unit which is essentially void
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' || e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        // We should never return this error, but just in case we will
        // handle it
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      // Method call will return null when not completed
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      // Retrieve authentication object
      final googleAuthentication = await googleUser.authentication;

      // Get the auth credential to provide it to Firebase
      final authCredential = GoogleAuthProvider.getCredential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      // Provide Firebase with the credential
      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }
}
