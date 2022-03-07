import 'package:beta_eats/views/availablefoods.dart';
import 'package:beta_eats/views/home.dart';
import 'package:flutter/material.dart';
import 'package:beta_eats/Auths/auth.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool _obscureText = false;
  viewpassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                  top: 98,
                  left: 55,
                  child: Container(
                      width: MediaQuery.of(context).size.width - 110,
                      height: 222,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Color.fromRGBO(240, 133, 36, 1),
                      ),
                      child: Center(
                        child: Image.asset('assets/rice.png'),
                      ))),
              Positioned(
                  top: 419,
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
                        controller: lemail,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 20),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 3) {
                            return 'Please enter a Email';
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
                  top: 518,
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
                        controller: lpass,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 20),
                        obscureText: _obscureText,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 3) {
                            return 'Please enter a Valid Password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
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
                  top: 624,
                  left: 30,
                  child: GestureDetector(
                    onTap: () {
                      if (lemail.text.isEmpty || lpass.text.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Error"),
                                content: Text("Please fill all the fields"),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            });
                      } else {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Avail()));
                      }
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
                        child: Center(
                          child: Text(
                            'Login',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                        )),
                  )),
            ])),
      ),
    );
  }
}
