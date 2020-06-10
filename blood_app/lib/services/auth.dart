import 'package:firebase_auth/firebase_auth.dart';

class Authservice{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sing in anon
  Future signInAnon() async{
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;

    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password

  //register with emain and password

  //sign out

}