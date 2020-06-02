import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ibookit/Models/user.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  GoogleSignInAccount account;
  FirebaseUser fireUser;
  final FacebookLogin facebookLogin = FacebookLogin();

  // create user obj based on firebase user
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
    //.map((FirebaseUser user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }

  // sign in anon
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      fireUser = user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      fireUser = user;

      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      fireUser = user;

      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  //Reset password
  Future resetPasswordRequest (String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    }
    catch (e) {
      print (e.message);
    }
  }

  //Login with Google

  Future<bool> loginWithGoogle() async {
    try {
      account = await googleSignIn.signIn();
      if(account == null)
        return false;
      print(account);
      AuthResult result = await _auth.signInWithCredential(GoogleAuthProvider.getCredential(
        idToken: (await account.authentication).idToken,
        accessToken: (await account.authentication).accessToken,
      ));
      FirebaseUser user = result.user;
      fireUser = user;

      if(user == null)
        return false;
      print('things seem okay now');
      print (user.toString());
      return true;
    } catch (e) {
      print(e.message);
      print("Error logging with google");
      return false;
    }
  }

  //Login with Facebook
  Future<bool> loginWithFacebook () async {
    final result = await facebookLogin.logIn(['email', 'public_profile']);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await http.get('https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
        final profile = JSON.jsonDecode(graphResponse.body);
        print(profile);
        return true;
        break;

      case FacebookLoginStatus.cancelledByUser:
        return false;
        break;
      case FacebookLoginStatus.error:
        return false;
        break;
    }
    AuthResult res = await _auth.signInWithCredential(FacebookAuthProvider.getCredential(accessToken: result.accessToken.token));
    FirebaseUser user = res.user;
    fireUser = user;
  }

  //google sign out
  Future allSignout() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
    await facebookLogin.logOut();
    bool fbbool =  await facebookLogin.isLoggedIn;
    print (fbbool);
    print ('google signout');
    print (account);
    print (fireUser);
    print('fireuser');
    try {
      await _auth.signOut();
      print(fireUser);
    } catch (error) {
      print(error.toString());
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

}
