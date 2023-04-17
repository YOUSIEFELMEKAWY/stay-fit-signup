import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const RegisterPage());
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFB3C3E4),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(300),
                        /*topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50)*/
                      )),
                  height: 130,
                  width: 160,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40, left: 15),
                    child: Text(
                      'Sign UP',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontFamily: 'Lato'),
                    ),
                  ),
                  //color: Color(0xFFB3C3E4),
                ),
                SizedBox(
                  width: 150,
                ),
                Icon(
                  Icons.info_outline,
                  color: Color.fromARGB(255, 125, 125, 125),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: 577,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF131E43),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(165),
                        topLeft: Radius.circular(165)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 180, top: 50),
                        child: Text(
                          'User name',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            filled: true,
                            fillColor: Color(0xFF334063),
                            hintText: 'Type here.....',
                            hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(0.75),
                                fontSize: 15),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xFF131E43)),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF131E43)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 220, top: 20),
                        child: Text(
                          'E-mail',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            filled: true,
                            fillColor: Color(0xFF334063),
                            hintText: 'Type here.....',
                            hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(0.75),
                                fontSize: 15),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xFF131E43)),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF131E43)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 185, top: 20),
                        child: Text(
                          'Password',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            filled: true,
                            fillColor: Color(0xFF334063),
                            hintText: 'Type here.....',
                            hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(0.75),
                                fontSize: 15),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xFF131E43)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xFF131E43)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 140, top: 20),
                        child: Text(
                          'Confirm password',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            filled: true,
                            fillColor: Color(0xFF334063),
                            hintText: 'Type here.....',
                            hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(0.75),
                                fontSize: 15),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xFF131E43)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xFF131E43)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35.0)),
                              backgroundColor: Color(0xFFB3C3E4),
                              foregroundColor: Color(0xff2B475E),
                              padding: const EdgeInsets.all(12),
                              textStyle: const TextStyle(fontSize: 22),
                            ),
                            child: Text(
                              'Sign UP',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
