import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:musk_motor/screens/sign_up.dart';
import 'package:musk_motor/widget/textColumn.dart';

class SignIn extends StatelessWidget {
  static const routeName = 'Sign-In';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4EFF6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: MediaQuery.of(context).size.width / 1.5,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Hello, nice to meet you!'),
                Text(
                  'Log into your account',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10,
                ),
                TextColumn(
                  hint: 'E-mail',
                ),
                SizedBox(
                  height: 10,
                ),
                TextColumn(
                  hint: 'Password',
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.green,
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.green,
                      size: 35,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Login with Facebook',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.green,
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.green,
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Text(
            'By creating an account you agree to our \nTerms of Service and Privacy Policy',
            textAlign: TextAlign.center,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(SignUp.routeName);
            },
            child: Text(
              'Dont have an account?',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 1.3);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height / 1.3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
