import 'package:auction/home_pages_screen.dart';
import 'package:auction/login_screen.dart';
import 'package:auction/resources/auth_method.dart';
import 'package:auction/signup_screen.dart';
import 'package:auction/start_screen.dart';
import 'package:auction/text_field_input.dart';
import 'package:auction/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';




class ForgetPasswordSubmit extends StatefulWidget {
  const ForgetPasswordSubmit({Key? key}) : super(key: key);

  @override
  _ForgetPasswordSubmit createState() => _ForgetPasswordSubmit();
}

class _ForgetPasswordSubmit extends State<ForgetPasswordSubmit> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (res == 'success') {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePagesScreen()));

      setState(() {
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      showSnackBar(context, res);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/222.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                Container(
                    height: 150,
                    child: const Image(
                      image: AssetImage('assets/logo1.png'),
                    )),
                // SvgPicture.asset(
                // ),

                const SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top:20,
                    bottom: 15,


                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      labelText: "Enter New Password",
                      labelStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    ),
                  ),
                ),
                const SizedBox(
                  height:5,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    decoration:
                    BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(colors: [Colors.teal.shade300,Colors.greenAccent.shade200])
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute( builder: (context) => LoginScreen(),
                          ),
                          );
                        },
                            child:Text('Submit',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),)),
                      ],
                    ),
                  ),
                ),


                Flexible(
                  child: Container(),
                  flex:2,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}