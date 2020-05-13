// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:todo_app_learning/infrastructure/auth/firebase_user_mapper.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:todo_app_learning/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app_learning/infrastructure/todo/todo_repository.dart';
import 'package:todo_app_learning/domain/todo/i_todo_repository.dart';
import 'package:todo_app_learning/application/todos/todo_actor/todo_actor_bloc.dart';
import 'package:todo_app_learning/application/todos/todo_category_form/todo_category_bloc.dart';
import 'package:todo_app_learning/application/todos/todo_watcher/todo_watcher_bloc.dart';
import 'package:todo_app_learning/infrastructure/auth/firebase_auth_facade.dart';
import 'package:todo_app_learning/domain/auth/i_auth_facade.dart';
import 'package:todo_app_learning/application/auth/auth_bloc.dart';
import 'package:todo_app_learning/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googlesignIn);
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerFactory<TodoActorBloc>(() => TodoActorBloc(g<ITodoRepository>()));
  g.registerFactory<TodoCategoryBloc>(
      () => TodoCategoryBloc(g<ITodoRepository>()));
  g.registerFactory<TodoWatcherBloc>(
      () => TodoWatcherBloc(g<ITodoRepository>()));
  g.registerLazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
        g<FirebaseAuth>(),
        g<GoogleSignIn>(),
        g<FirebaseUserMapper>(),
      ));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<ITodoRepository>(
        () => TodoRepository(g<Firestore>()));
  }
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
