import 'package:chat_net/service/database_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //login

  //register
  Future registerUserWithEmailAndPassword(String email, String fullName, String password) async{
    try{
      User user = (await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password)).user!;
      if(user!=null){
        //call our database service to update the user's data
        DatabaseService(uid: user.uid).updateUserData(fullName, email);
        return true;
      }
    }on FirebaseAuthException catch(e){
      print(e);
      return e.message;
    }
  }

  //sign-out
}