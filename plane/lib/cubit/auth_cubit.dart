import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:plane/models/user_model.dart';
import 'package:plane/services/auth_service.dart';
import 'package:plane/services/user_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signIn(
    {
      required String email,
      required String password,
    }
  ) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthService()
        .signIn(
          email: email, 
          password: password
        );

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void signUp(
    {
      required String email,
      required String name,
      required String password,
      String hobby = ''
    }
  ) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthService()
        .signUp(
          name: name, 
          email: email, 
          password: password,
          hobby: hobby
        );
      
      emit(AuthSuccess(user));
    } catch (e) {
      emit(
        AuthFailed(
          e.toString()
        )
      );
    }
  }

  void signOut() async {
    try {
      emit(AuthInitial());
      await AuthService().signOut();
      emit(
        AuthInitial()
      );
    } catch (e) {
      emit(
        AuthFailed(
          e.toString()
        )
      );
    }
  }

  void getCurrentUser (String id) async {
    try {
      UserModel user = await UserService().byId(id);
      emit(
        AuthSuccess(user)
      );
    } catch (e) {
      emit(
        AuthFailed(
          e.toString()
        )
      );
    }
  } 
}
