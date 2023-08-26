import 'package:flutter/material.dart';
import 'package:formfield/screens/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> forms = new GlobalKey<FormState>();
  send() {
    var da = forms.currentState;
    if (da!.validate()) {
      print('fd');
    } else {
      print('f');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Form(
            key: forms,
            child: Column(
              children: [
                Image.asset('assets/images/talking.png'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(offset: Offset(2, 5), color: Colors.white70)
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          onTap: () {},
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Enter your user Name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22))),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                              return 'Enter correct email';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          onTap: () {},
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: 'Enter your user Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22))),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                              return 'Enter correct email';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          onTap: () {},
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'Enter your user Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22))),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[1-2][1-9]').hasMatch(value)) {
                              return 'Enter correct password';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(right: 20),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.deepPurple),
                    )),
                SizedBox(
                  height: 22,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 170,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.deepPurple,
                                    offset: Offset(2, 2))
                              ],
                              color: Colors.deepPurple,
                              border: Border.all(
                                  width: 1, color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(22)),
                          child: MaterialButton(
                              onPressed: send,
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ))),
                      Container(
                          width: 170,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white, offset: Offset(2, 2))
                              ],
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(22)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Sign Up With',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset('assets/images/google.png'),
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
