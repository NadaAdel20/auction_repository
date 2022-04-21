import 'package:auction/forget_password_submit_screen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordVerify extends StatefulWidget {
  const ForgetPasswordVerify({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordVerify> createState() => _ForgetPasswordVerifyState();
}

class _ForgetPasswordVerifyState extends State<ForgetPasswordVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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

                Text('Enter Verification Code',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
                const SizedBox(
                  height:20,
                ),
                Expanded(child: Container(color: Colors.red,)),


                Padding(
                  padding: const EdgeInsets.only(top: 45),
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
                          Navigator.push(context, MaterialPageRoute( builder: (context) => ForgetPasswordSubmit(),
                          ),
                          );
                        },
                            child:Text('Verify',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),)),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('if you did not receive a code!'),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(onPressed: (){}, child: Text('Resend',style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,

                    ),),)
                  ],
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