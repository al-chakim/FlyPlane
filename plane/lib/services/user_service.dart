import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:plane/models/user_model.dart';

class UserService{

  CollectionReference _userReference =
    FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balande': user.balance
      });
    } catch (e) {
      throw e;
    }
  } 

}