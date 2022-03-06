import 'package:beta_eats/views/Signin.dart';
import 'package:flutter/material.dart';
import 'package:beta_eats/Auths/auth.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool _visible = false;
  viewpassword() {
    setState(() {
      _visible = !_visible;
    });
  }
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: myformkey,
          child: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 76,
                      left: 47,
                      child: Center(
                          child: Container(
                              width: MediaQuery.of(context).size.width - 100,
                              height: 172,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Color.fromRGBO(240, 133, 36, 1),
                              ),
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 123,
                                  child:Center(
                                    child:Image.asset('assets/sandw.png' , height: 150, width: 150,),
                                  ),
                                
                                 // decoration: BoxDecoration(
                                  //  image: DecorationImage(
                                  //      image: AssetImage(
                                  //          'assets/sandw.png'),
                                  //      fit: BoxFit.fitWidth),
                                 // )
                                  )))),
                  Positioned(
                      top: 305,
                      left: 30,
                      child: Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Color.fromRGBO(196, 196, 196, 1),
                          ),
                          child: TextFormField(
                            controller: usernamec,style: TextStyle(color: Colors.black ,fontFamily: 'Montserrat' ,fontSize: 20),
                            validator: (value) {
                              if (value!.isEmpty || value.length < 3) {
                                return 'Please enter a Username';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Username',
                              suffixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500),
                              contentPadding: EdgeInsets.only(top: 14, left: 20),
                              border: InputBorder.none,
                            ),
                          )
                          )
                          ),
                  Positioned(
                      top: 407,
                      left: 30,
                      child: Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Color.fromRGBO(196, 196, 196, 1),
                          ),
                          child: TextFormField(
                            controller: emailc,style: TextStyle(color: Colors.black ,fontFamily: 'Montserrat' ,fontSize: 20),
                             validator: (value) {
                              if (value!.isEmpty || value.length < 3) {
                                return 'Please enter a valid Email';
                              }
                              return null;
                            },
                            
                            decoration: InputDecoration(
                              hintText: 'Email',
                              suffixIcon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500),
                              contentPadding: EdgeInsets.only(top: 14, left: 20),
                              border: InputBorder.none,
                            ),
                          ))),
                  Positioned(
                      top: 499,
                      left: 30,
                      child: Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Color.fromRGBO(196, 196, 196, 1),
                          ),
                          child: TextFormField(
                            controller: passwordc,style: TextStyle(color: Colors.black ,fontFamily: 'Montserrat' ,fontSize: 20),
                            obscureText:  !_visible,
                             validator: (value) {
                              if (value!.isEmpty || value.length < 6) {
                                return 'Please enter a Password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    viewpassword();
                                  });
                                  
                                }, icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                ),
                                ),
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500),
                              contentPadding: EdgeInsets.only(top: 14, left: 20),
                              border: InputBorder.none,
                            ),
                          ))),
                  Positioned(
                      top: 590,
                      left: 30,
                      child: GestureDetector(
                        onTap: () {
                          if(myformkey.currentState!.validate()){
                            //UserRegistration();
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
                          }else{

                            showDialog(context: context, builder: (context){
                              return AlertDialog(
                                title: Text(" Registration Error" ,style: TextStyle(fontFamily: 'Montserrat' ,fontSize: 20),),
                                content: Text("Please fill all the fields" ,style: TextStyle(fontFamily: 'Montserrat' ,fontSize: 20),),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("OK" ,style: TextStyle(fontFamily: 'Montserrat' ,fontSize: 20),),
                                    onPressed: (){
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            });

                          }
                          //UserRegistration();
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width - 60,
                            height: 65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Color.fromRGBO(240, 133, 36, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 22,
                                  left: 115,
                                  child: Text(
                                    'Register',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 18,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ])),
                      )),
                  Positioned(
                      top: 672,
                      left: 37,
                      child: Text(
                        'Already have an account?  Login',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                ])),
          ),
        ),
      ),
    );
  }
}
