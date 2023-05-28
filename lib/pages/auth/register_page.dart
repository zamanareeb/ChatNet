import 'package:chat_net/pages/auth/login_page.dart';
import 'package:chat_net/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String fullName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // color: Colors.amberAccent,
            margin: const EdgeInsets.only(top: 10),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      'Groupie',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    'Create your account now to chat and explore!',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  Container(
                    // color: Colors.lightBlueAccent,
                      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Image.asset('assets/register.png',)
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      decoration: textInputDecoration.copyWith(
                          labelText: 'Full Name',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Theme.of(context).primaryColor,
                          )
                      ),
                      onChanged: (val){
                        setState(() {
                          fullName = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isNotEmpty) {
                          return null;
                        }else{
                          return "Name can't be empty";
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      decoration: textInputDecoration.copyWith(
                          labelText: 'Email',
                          prefixIcon: Icon(
                            Icons.email_sharp,
                            color: Theme.of(context).primaryColor,
                          )
                      ),
                      onChanged: (val){
                        setState(() {
                          email = val;
                        });
                      },
                      validator: (val) {
                        return RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(val!)
                            ? null
                            : "Please enter a valid email";
                      },
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      decoration: textInputDecoration.copyWith(
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Theme.of(context).primaryColor,
                          )
                      ),
                      obscureText: true,
                      onChanged: (val){
                        setState(() {
                          password = val;
                        });
                      },
                      validator: (val){
                        if(val!.length < 6){
                          return 'Password must be at least 6 characters long.';
                        }
                        else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: ElevatedButton(
                      onPressed: (){
                        login();
                      },
                      child: const Text('Register', style: TextStyle(fontSize: 16),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text.rich(
                      TextSpan(
                          text: "Already have an account? ",
                          children: [
                            TextSpan(
                                text: 'Login now',
                                mouseCursor: MouseCursor.defer,
                                style: const TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w400
                                ),
                                recognizer: TapGestureRecognizer()..onTap = () {
                                  nextScreen(context, const LoginPage());
                                }
                            )
                          ]
                      )
                  ),
                  const SizedBox(height: 50,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  login() {
    if(_formKey.currentState!.validate()){

    }
  }
}
