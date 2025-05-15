import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AppStarted>(_onAppStarted);
    on<LoggedIn>((event, emit) => emit(Authenticated()));
    on<LoggedOut>((event, emit) => emit(Unauthenticated()));
  }

  Future<void> _onAppStarted(AppStarted event, Emitter<AuthState> emit) async {
    await Future.delayed(const Duration(seconds: 2)); // simulate splash delay
    // Simulate check for token or user session
    final bool isLoggedIn = await _checkLoginStatus();

    if (isLoggedIn) {
      emit(Authenticated());
    } else {
      emit(Unauthenticated());
    }
  }

  Future<bool> _checkLoginStatus() async {
    // Replace with SharedPreferences or secure storage check
    return false;
  }
}
