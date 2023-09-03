import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:n_catch/forgot_password.dart';
import 'package:n_catch/log_in.dart';
import 'package:n_catch/signup_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#B2D6FF'),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'N',
                        style: TextStyle(
                          fontSize: 50,
                          color: HexColor('00C254'),
                          fontFamily: 'Omegle',
                        ),
                      ),
                      const Text(
                        'catch',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontFamily: 'Omegle',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 270,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: HexColor('0A1E36'),
                      fontFamily: 'Poppins',
                      //fontFamily: 'Omegle',
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 300,
                  child: const TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 10.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: 270,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: HexColor('#0A1E36'),
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 300,
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 300,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Fpassword()));
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Forgot password',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: HexColor('0A1E36'),
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Log_in()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 130),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        primary: HexColor('00C154'),
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      child: const Text(
                        'Log in',
                        style: TextStyle(fontFamily: 'Poppins'),
                      )),
                ),
                const SizedBox(
                  height: 0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t you have an account? ',
                        style: TextStyle(
                          color: HexColor('0A1E36'),
                          fontFamily: 'Poppins',
                        )),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: HexColor('0A1E36'),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/lp.png',
                  width: double.infinity, // Set the width to fill the screen

                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
