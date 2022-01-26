import 'dart:js';

import 'package:flutter/material.dart';
import 'package:tehnokopi/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Container(
        child: Stack(
          children: [
            Positioned(
              right: -getSmallDiameter(context) / 3,
              top: -getSmallDiameter(context) * 0.60,
              child: Container(
                  width: getSmallDiameter(context),
                  height: getSmallDiameter(context),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [
                            Colors.lightGreen.shade400,
                            Colors.lightGreen.shade600,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter))),
            ),
            Positioned(
              left: -getBigDiameter(context) / 4,
              top: -getBigDiameter(context) * 0.60,
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [
                          Colors.green.shade800,
                          Colors.green.shade900,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Image(
                    fit: BoxFit.fill, image: AssetImage("assets/daun_teh.png")),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Center(
                      child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/logo.png")),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 90),
                    child: Center(
                      child: Text("Log In",
                          style: TextStyle(
                              color: Colors.brown.shade800,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 90, 20, 10),
                    child: Column(
                      children: [
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                  Icons.email_rounded), //icon diluar TextField
                              fillColor: Colors.white,
                              filled:
                                  true, //jika memakai prefix/suffix maka tidak boleh menggunakan prefix/suffix text dan prefix/suffix style
                              labelText: "E-mail", //text diluar TextField
                              labelStyle: TextStyle(color: Colors.green[900]),
                              hintText: "example@gmail.com",
                              hintStyle: TextStyle(fontSize: 14),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: TextField(
                            obscureText: true, //untuk inputan password
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons
                                  .vpn_key_rounded), //icon diluar TextField
                              fillColor: Colors.white,
                              filled:
                                  true, //jika memakai prefix/suffix maka tidak boleh menggunakan prefix/suffix text dan prefix/suffix style
                              labelText: "Password", //text diluar TextField
                              labelStyle: TextStyle(color: Colors.green[900]),
                              hintText: "*************",
                              hintStyle: TextStyle(fontSize: 14),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Material(
                            elevation: 3,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 300,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      colors: [Colors.blue, Colors.blue],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter)),
                              child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    splashColor: Colors.green,
                                    onTap: () {},
                                    child: Center(
                                        child: Text(
                                      "LogIn",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    )),
                                  )),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  child: Text("Don't Have account? ",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                      ))),
                              Container(
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return Register();
                                        }));
                                      },
                                      child: Text("Sign Up Here",
                                          style: TextStyle(
                                            fontSize: 17,
                                          )))),
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 15),
                            child: TextButton(
                                onPressed: () {},
                                child: Text("Forgot Password?",
                                    style: TextStyle(
                                      fontSize: 17,
                                    )))),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
