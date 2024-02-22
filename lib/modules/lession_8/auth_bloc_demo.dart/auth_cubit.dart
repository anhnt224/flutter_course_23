// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_course_23/modules/lession_8/auth_bloc_demo.dart/auth_bloc.dart';

// class AuthCubit extends Cubit<AuthState> {
//   AuthCubit() : super(AuthInitial());

//   void login(String username, String password) async {
//     emit(LoginIP());

//     // Delay 2s - Thay cho viec request Login API
//     await Future.delayed(const Duration(seconds: 2));

//     if (username == 'admin' && password == 'admin') {
//       emit(LoginSuccess(username: username));
//     } else {
//       emit(LoginFailed(errorMessage: 'Invalid username or password'));
//     }
//   }
// }
