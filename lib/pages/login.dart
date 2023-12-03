import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
            body:SizedBox(
              width:double.infinity ,
              height:double.infinity,


              child:Stack( children:[
                Column(
                  children: [
                    Text("Login",textAlign:TextAlign.center ,style:TextStyle(fontSize: 55 , ) ,),
                    Center(
                      child:SvgPicture.asset( "scr/main/res/Icons Assets/login.svg",
                        alignment:Alignment.center ,),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.purple[800],
                            ),
                            hintText: "Your Email :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(
                              Icons.visibility,
                              color: Colors.purple[900],
                            ),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.purple[800],
                              size: 19,
                            ),
                            hintText: "Password :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    ElevatedButton(
                      onPressed: () {         },

                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(
                                horizontal: 106, vertical: 10)),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "login",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an accout? "),

                        GestureDetector(
                            onTap: (){ Navigator.pushNamed(context, "/signup");},
                            child: Text(" Sign up", style: TextStyle(fontWeight: FontWeight.bold),)),

                      ],
                    )
                  ],


                ),


                Positioned(
                    left:0,
                    child:Image.asset("scr/main/res/Image Assets/main_top.png",width: 111,)
                ),
                Positioned(
                    bottom:0 ,
                    right: 0,
                    child: Image.asset("scr/main/res/Image Assets/login_bottom.png",width: 150,))

              ],
              ) ,
            )
        )
    );



  }
}
