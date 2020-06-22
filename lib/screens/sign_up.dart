import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:musk_motor/screens/sign_in.dart';
import 'package:musk_motor/widget/textColumn.dart';

class SignUp extends StatelessWidget {
  static const routeName = 'Sign-Up';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF4EFF6),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: MediaQuery.of(context).size.width / 3.5,
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
                    'Create account',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                  Row(
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
                        'Sign up with Facebook',
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
                  Divider(
                    color: Colors.grey,
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
                    hint: 'Full name',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextColumn(
                    hint: 'Password',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Has at least 8 characters',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Has at least 1 number',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextColumn(
                    hint: 'Confirm Password',
                  ),
                ],
              ),
            ),
            Text(
              'By creating an account you agree to our \nTerms of Service and Privacy Policy',
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.green,
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(SignIn.routeName);
              },
              child: Text(
                'Already have an account? Sign in',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 2);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height / 2);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
