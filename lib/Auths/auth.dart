import 'package:beta_eats/views/Signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:beta_eats/views/Signup.dart';


  TextEditingController emailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();
  TextEditingController usernamec = TextEditingController(); 

   TextEditingController lemail = TextEditingController(); 
  TextEditingController  lpass = TextEditingController(); 




  final myformkey = GlobalKey<FormState>();


 

 Future UserRegistration() async {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Signup = await _auth.createUserWithEmailAndPassword(
      email: emailc.text.trim(), password: passwordc.text.trim(),).whenComplete(() => print('Account Created') );

}


Userlogin() async {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Signup = await _auth.signInWithEmailAndPassword(
      email: lemail.text.trim(), password: lpass.text.trim(),); 

}





