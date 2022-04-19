import 'package:flutter/material.dart';
import 'package:tehnokopi/screens/curved_navigation_bar.dart';
import 'package:tehnokopi/screens/register.dart';

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
      body: Stack(
        children: [
          //circle 1 bagian atas
          Positioned(
            right: -getSmallDiameter(context) / 5,
            top: -getSmallDiameter(context) * 0.80,
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
          //circle 2 bagian atas
          Positioned(
            left: -getBigDiameter(context) / 6,
            top: -getBigDiameter(context) * 0.85,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Colors.green.shade800,
                    Colors.green.shade900,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
          //img tumbuhan bagian bawah
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 95,
                child: const Image(
                  image: AssetImage("assets/img/daun_teh.png"),
                  repeat: ImageRepeat.repeatX,
                ),
              ),
            ),
          ),
          //logo
          Align(
            alignment: Alignment.topCenter,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: const Center(
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/img/logo.png")),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 90),
                  child: Center(
                    child: Text("Log In",
                        style: TextStyle(
                            color: Colors.brown.shade800,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                //textfield email
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 90, 20, 10),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 450,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                                Icons.email_rounded), //icon diluar TextField
                            fillColor: Colors.white,
                            filled:
                                true, //jika memakai prefix/suffix maka tidak boleh menggunakan prefix/suffix text dan prefix/suffix style
                            labelText: "E-mail", //text diluar TextField
                            labelStyle: TextStyle(color: Colors.green[900]),
                            hintText: "example@gmail.com",
                            hintStyle: const TextStyle(fontSize: 14),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),
                      //textfield password
                      Container(
                        width: 450,
                        height: 50,
                        margin: const EdgeInsets.only(top: 20),
                        child: TextField(
                          obscureText: true, //untuk inputan password
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                                Icons.vpn_key_rounded), //icon diluar TextField
                            fillColor: Colors.white,
                            filled:
                                true, //jika memakai prefix/suffix maka tidak boleh menggunakan prefix/suffix text dan prefix/suffix style
                            labelText: "Password", //text diluar TextField
                            labelStyle: TextStyle(color: Colors.green[900]),
                            hintText: "*************",
                            hintStyle: const TextStyle(fontSize: 14),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),
                      //tombol login
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 300,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(
                                    colors: [Colors.blue, Colors.blue],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: Material(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(20),
                                  splashColor: Colors.green,
                                  onTap: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const MyApp();
                                    }));
                                  },
                                  child: const Center(
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
                      //textbutton register
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't Have account? ",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const Register();
                                  }));
                                },
                                child: const Text("Sign Up Here",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ))),
                          ],
                        ),
                      ),
                      //forgot password
                      Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 180),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text("Forgot Password?",
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
    );
  }
}
