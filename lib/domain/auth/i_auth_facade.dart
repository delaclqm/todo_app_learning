import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'auth_failure.dart';
import 'value_objects.dart';

/// Facade is a design pattern
abstract class IAuthFacade {

  /// Must return a Unit on the right because void is not a type and Either 
  /// requires a type to be returned but it is essentially void
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password
  });

  // Sign in with Google
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}