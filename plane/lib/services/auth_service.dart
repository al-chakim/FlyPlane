import 'package:plane/models/user_model.dart';
import 'package:plane/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp(
    {
      required String name,
      required String email,
      required String password,
      String hobby = ''
    }
  ) async {
    try {
      UserCredential userCredential = await _auth
        .createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
        id: userCredential.user!.uid, 
        email: email, 
        name: name,
        hobby: hobby,
        balance: 280000000
      );

      await UserService().setUser(user);

      return user;

    } catch (e) {
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> signIn(
    {
      required String email,
      required String password,
    }
  ) async {
    try {
      UserCredential userCredential = await _auth
        .createUserWithEmailAndPassword(
          email: email, 
          password: password
        );
      
      UserModel user =  await UserService().byId(
        userCredential.user!.uid
      );
      return user;
    } catch (e) {
      throw e;
    }
  }

}