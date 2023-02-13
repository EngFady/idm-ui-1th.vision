
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   brightness: Brightness.light,
      //   backgroundColor: Colors.white,
      //   leading:
      //   IconButton( onPressed: (){
      //     Navigator.pop(context);
      //   },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      // ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Color(0xff0f1529),
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(12.0)

                              ),
                              child: const Text('User', style: TextStyle(
                                color: Colors.white
                              ),),
                            ),
                            SizedBox(width: 12.05,),
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Color(0xff0f1529),
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(12.0)
                              ),
                              child: Text('Pioneer', style: TextStyle(
                                  color: Colors.white,

                              ),),
                            ),

                          ]
                        ),
                        SizedBox(height: 20,),
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
                          child: Text('Log In', style: TextStyle(
                            color: Colors.white
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
                          makeInput(label: "Full Name"),
                          makeInput(label: "Email"),
                          makeInput(label: "Password",obsureText: true),
                          SizedBox(height: 12.0,),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 23.004,),
                        Text('By Signing Up you accept to our ', style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                        ),),
                        Text('Terms and Conditions', style : TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ))
                      ],
                    ),
SizedBox(height: 12,),
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
                          child: Text("Sign Up",style: TextStyle(
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
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                      Text("OR"),
                      Expanded(
                        child: new Container(
                            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                    ]),
                    //--------------OR-----------------//

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? "),
                        Text("Login",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),),
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
