
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:ideameter/pages/Sign%20in.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff4d96d1),
                    Color(0xff203058),
                    Color(0xff0f1529),
                  ],
                )
            ),            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('IDEAMETER', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4d96d1),
                                fontSize: 25
                            )),
                            SizedBox(width: 33.02,),
                            Container(
                              padding: EdgeInsets.all(6.030),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10.001305)
                              ),
                              child: Text('Sign Up', style: TextStyle(
                                  color: Colors.white,

                              ),),
                            )
                          ],
                        ),
                        SizedBox(height: 30,)
                      ],
                    ), // first
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 40.02,),
                        Text('Create Your Account'),
                        SizedBox(height: 40,)
                      ],
                    ),// t 2 attributes
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40
                      ),
                      child: Column(
                        children: [
                          makeInput(label: "Email"),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)
                                ),
                              ),
                            ),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Forget Password?')
                          ],
                          ),
                          SizedBox(height: 12.0,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        padding: EdgeInsets.only(top: 3,left: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black)
                            )
                        ),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height:60,
                          onPressed: (){},
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Text("Log In",style: TextStyle(
                              fontWeight: FontWeight.w600,fontSize: 16,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    //-------------- OR----------------//
                    Row(children: <Widget>[
                      Expanded(
                        child: new Container(
                            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: Divider(
                              thickness: 0.9,
                              color: Colors.blue.shade700,
                              height: 36,
                            )),
                      ),
                      Text("OR", style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.bold),),
                      Expanded(
                        child: new Container(
                            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: Divider(
                              thickness: 0.9,
                              color: Colors.blue.shade700,
                              height: 36,
                            )),
                      ),
                    ]),
                    //--------------OR-----------------//
                    Row(
                      mainAxisAlignment:  MainAxisAlignment.start,
                      children: [
                        SignInButton(
                          Buttons.Google,
                          onPressed: () {},
                        ),
                      ],
                    )

                  ],

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Text(label,style:TextStyle(
      //     fontSize: 15,
      //     fontWeight: FontWeight.w400,
      //     color: Colors.black87
      // ),),
      SizedBox(height: 5,),
      TextField(
        style: TextStyle(color: Colors.white),
        obscureText: obsureText,
        decoration: InputDecoration(
          hintText: label,
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
        ),
      ),
      SizedBox(height: 30,)

    ],
  );
}
