import 'dart:js';

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_learning/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
              "https://raw.githubusercontent.com/flutter/website/master/src/_assets/image/flutter-lockup.png"),
          _signInButton(),
          RaisedButton(child: Text("Sign Out!"), onPressed: () {})
        ],
      ),
    ));
  }

  Widget _buildSignInPage() {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    // Use localized strings here in your apps
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Invalid email and password combination',
                  ),
                ).show(context);
              },
              (_) {
                Router.navigator.pushReplacementNamed(Router.notesOverviewPage);
                context
                    .bloc<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              const Text(
                '📝',
              ).textAlignment(TextAlign.center).fontSize(130),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => state.emailAddress.value.fold(
                  (f) => f.maybeMap(
                    invalidEmail: (_) => 'Invalid email',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                // controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                obscureText: true,
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) => state.password.value.fold(
                  (f) => f.maybeMap(
                    shortPassword: (_) => 'Short password',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () => context.bloc<SignInFormBloc>().add(
                          const SignInFormEvent
                              .signInWithEmailAndPasswordPressed()),
                      child: const Text('SIGN IN'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: FlatButton(
                      onPressed: () => context.bloc<SignInFormBloc>().add(
                          const SignInFormEvent
                              .registerWithEmailAndPasswordPressed()),
                      child: const Text('REGISTER'),
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () => context
                    .bloc<SignInFormBloc>()
                    .add(const SignInFormEvent.signInWithGooglePressed()),
                color: Colors.lightBlue,
                child: const Text(
                  'SIGN IN WITH GOOGLE',
                ).textColor(Colors.white).bold(),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(value: null),
              ]
            ],
          ),
        );
      },
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () => {
        context.bloc<Sign
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: NetworkImage(
                    "https://cdn4.iconfinder.com/data/icons/new-google-logo-2015/400/new-google-favicon-512.png"),
                height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

