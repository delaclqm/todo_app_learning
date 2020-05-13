import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                final message = failure.map(
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Invalid email and password combination');
                final snackbar = SnackBar(
                  content: Text(
                    message,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                );
                Scaffold.of(context).showSnackBar(snackbar);
              },
              (_) {
                Router.navigator.pushReplacementNamed(Router.todoHomePage);
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Image(
                      image: AssetImage('assets/images/flutter.png'),
                      height: 100.0),
                  const Text('&').textScale(3.0),
                  const Image(
                      image: AssetImage('assets/images/dart.png'),
                      height: 100.0),
                  const Text('&').textScale(3.0),
                  const Image(
                    image: AssetImage('assets/images/firebase.png'),
                    height: 100.0,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Sign In")
                  .textScale(3.0)
                  .textAlignment(TextAlign.center),
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(value: null),
              ],
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
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                obscureText: true,
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) =>
                    context.bloc<SignInFormBloc>().state.password.value.fold(
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
                    child: RaisedButton(
                      onPressed: () => context.bloc<SignInFormBloc>().add(
                          const SignInFormEvent
                              .signInWithEmailAndPasswordPressed()),
                      child: const Text('SIGN IN'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: RaisedButton(
                      onPressed: () => context.bloc<SignInFormBloc>().add(
                          const SignInFormEvent
                              .registerWithEmailAndPasswordPressed()),
                      child: const Text('REGISTER'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("OR").textScale(2.0).textAlignment(TextAlign.center),
              const SizedBox(height: 20),
              _buildGoogleSignInButton(context)
            ],
          ),
        );
      },
    );
  }

  Widget _buildGoogleSignInButton(BuildContext context) {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () => {
        context
            .bloc<SignInFormBloc>()
            .add(const SignInFormEvent.signInWithGooglePressed())
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
            const Image(
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
