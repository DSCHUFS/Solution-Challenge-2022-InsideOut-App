import 'package:flutter/material.dart';
import 'package:inside_out/widgets/custom_elevated_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: _buildContent(context),
        backgroundColor: Color(0xFFFBF9FF),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20.0),
                const Center(
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: "SeoulNamsan",
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.continueAction,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12.0),
                const TextField(
                  textInputAction: TextInputAction.continueAction,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 12.0),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomElevatedButton(
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: "SeoulNamsan",
                      ),
                    ),
                    height: 50,
                    color: const Color(0xFFFFDEEE),
                    borderRadius: 12,
                    onPressed: () {}),
                const SizedBox(
                  height: 50,
                ),
                CustomElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/google_symbol.png',
                        height: 25,
                      ),
                      const Text(
                        'Sign up with Google',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Opacity(
                        opacity: 0,
                        child: Image.asset(
                          'assets/google_symbol.png',
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                  height: 50,
                  color: Colors.white,
                  borderRadius: 12,
                  onPressed: () {
                    print('OK drawer');
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/facebook_symbol.png',
                        height: 25,
                      ),
                      const Text(
                        'Sign up with Twitter',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Opacity(
                        opacity: 0,
                        child: Image.asset(
                          'assets/google_symbol.png',
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                  height: 50,
                  color: Colors.white,
                  borderRadius: 12,
                  onPressed: () {
                    print('OK drawer');
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/apple_symbol.png',
                        height: 25,
                      ),
                      const Text(
                        'Apple로 로그인',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Opacity(
                        opacity: 0,
                        child: Image.asset(
                          'assets/apple_symbol.png',
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                  height: 50,
                  color: Colors.white,
                  borderRadius: 12,
                  onPressed: () {
                    print('OK drawer');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
