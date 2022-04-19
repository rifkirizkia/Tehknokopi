import 'package:flutter/material.dart';
import 'package:tehnokopi/screens/login.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
          //lingkaran kecil atas
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
          //lingkaran besar atas
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
          //img tanaman bagian bawah
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 95,
              child: const Image(
                image: AssetImage("assets/img/daun_teh.png"),
                // fit: BoxFit.cover,
                repeat: ImageRepeat.repeatX,
              ),
            ),
          ),
          //logo tehknokopi atas
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: const Center(
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/img/logo.png")),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 90),
                  child: Center(
                    child: Text("Register",
                        style: TextStyle(
                            color: Colors.brown.shade800,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                //textfield email
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 40, 20, 10),
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
                      //textfield username
                      Container(
                        width: 450,
                        height: 50,
                        margin: const EdgeInsets.only(top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                                Icons.person), //icon diluar TextField
                            fillColor: Colors.white,
                            filled:
                                true, //jika memakai prefix/suffix maka tidak boleh menggunakan prefix/suffix text dan prefix/suffix style
                            labelText: "Username", //text diluar TextField
                            labelStyle: TextStyle(color: Colors.green[900]),
                            hintText: "example",
                            hintStyle: const TextStyle(fontSize: 14),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),
                      //textfield phone number
                      Container(
                        width: 450,
                        height: 50,
                        margin: const EdgeInsets.only(top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon:
                                const Icon(Icons.call), //icon diluar TextField
                            fillColor: Colors.white,
                            filled:
                                true, //jika memakai prefix/suffix maka tidak boleh menggunakan prefix/suffix text dan prefix/suffix style
                            labelText: "Phone Number", //text diluar TextField
                            labelStyle: TextStyle(color: Colors.green[900]),
                            hintText: "08***********",
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
                            labelText:
                                "Confirm Password", //text diluar TextField
                            labelStyle: TextStyle(color: Colors.green[900]),
                            hintText: "*************",
                            hintStyle: const TextStyle(fontSize: 14),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),
                      //button register
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
                                  onTap: () {},
                                  child: const Center(
                                      child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )),
                                )),
                          ),
                        ),
                      ),
                      //textbutton sign in here
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 180),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Have An account? ",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const LoginPage();
                                  }));
                                },
                                child: const Text("Sign In Here",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ))),
                          ],
                        ),
                      ),
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
