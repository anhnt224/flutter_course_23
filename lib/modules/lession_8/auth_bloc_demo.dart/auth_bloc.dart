import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';
part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(LoginIP());
      await Future.delayed(const Duration(seconds: 2));
      if (event.username == 'admin' && event.password == 'admin') {
        emit(LoginSuccess(username: event.username));
      } else {
        emit(LoginFailed(errorMessage: 'Invalid username or password'));
      }
    });
  }

  @override
  void onEvent(AuthEvent event) {
    super.onEvent(event);
    print('Event: $event');
  }

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
    print('Change: $change');
  }
}
