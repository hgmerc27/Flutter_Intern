// import 'package:firebase_auth/firebase_auth.dart';
// import 'login_event.dart';
// import 'login_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   final FirebaseAuth _firebaseAuth;

//   LoginBloc(this._firebaseAuth) : super(LoginInitial());

//   @override
//   Stream<LoginState> mapEventToState(LoginEvent event) async* {
//     if (event is LoginButtonPressed) {
//       yield LoginLoading();
//       try {
//         final UserCredential user =
//             await _firebaseAuth.signInWithEmailAndPassword(
//           email: event.username!,
//           password: event.password!,
//         );
//         if (user != null) {
//           yield LoginSuccess();
//         } else {
//           yield LoginFailure(error: 'Something went wrong!');
//         }
//       } catch (error) {
//         yield LoginFailure(error: error.toString());
//       }
//     }
//   }
// }

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_3/bloc/login_event.dart';
import 'package:flutter_application_3/bloc/login_state.dart';
import 'package:flutter_application_3/firebaseauth.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState(loginStatus: '')) {
    on<LoginButtonPressed>(_loginFirebase);
  }

  Future<void> _loginFirebase(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    final AuthService auth = AuthService();
    final user = await auth.signInUserWithEmaiAndPassword(
        event.username!, event.password!);

    if (user != null) {
      emit(state.checklogin(status: 'OK'));
      print('Thành công');
    } else {
      emit(state.checklogin(status: 'KO'));
      print('Thất bại');
    }
  }
}
