import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget{
    @override
  State<StatefulWidget> createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{


  @override
  Widget build(BuildContext context) {

      return Scaffold(

          body: Container(

            width: double.infinity,
            height: double.infinity,

            padding: const EdgeInsets.only(top: 80),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors:[
                  Color(0xfff46b45),
                  Color(0xffeea849),
                ],
              ),
            ),


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                 //login and welcome back
                Padding(
                  padding:const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                       Text("Login", style:TextStyle(fontSize: 45, color: Colors.white),),
                       SizedBox(height: 20),
                       Text("Welcome Back", style:TextStyle(fontSize: 25, color: Colors.white),),
                    ],
                  ),
                ),

                const SizedBox(height:40,),

                 //the white area
                 Expanded(
                     child:Container(
                       decoration: const BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(60),
                             topRight: Radius.circular(60)),
                       ),

                       child: Padding(
                         padding: const EdgeInsets.all(35),
                         child: ListView(
                           children: [

                             const SizedBox(height: 10,),

                             //email
                             Container(
                               decoration:  BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                                 boxShadow: const [BoxShadow(
                                   color:  Color.fromRGBO(255, 97, 27, 0.3),
                                   offset: Offset(0,10),
                                   blurRadius: 20,
                                 )],
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                 child: TextFormField(
                                   decoration:const InputDecoration(
                                     hintText: 'Email or Phone number',
                                     border: InputBorder.none,
                                   ),
                                 ),
                               ),
                             ),
                             const SizedBox(height: 10,),

                             //password
                             Container(
                               decoration:  BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                                 boxShadow: const [BoxShadow(
                                   color:  Color.fromRGBO(255, 97, 27, 0.3),
                                   offset: Offset(0,10),
                                   blurRadius: 20,
                                 )],
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                 child: TextFormField(
                                   decoration:const InputDecoration(
                                     hintText: 'Password',
                                     border: InputBorder.none,

                                     ),
                                   obscureText: true,
                                   keyboardType: TextInputType.visiblePassword,
                                 ),
                               ),
                             ),
                             const SizedBox(height: 30,),

                             //forgetPassword
                             const TextButton(
                                 onPressed: null,
                                 child: Text('Forget Password?',
                                   style: TextStyle(fontSize: 18),)),
                             const SizedBox(height: 15,),

                             //loginButton
                             Container(
                           padding: const EdgeInsets.fromLTRB(3, 5, 3, 5),
                           margin: const EdgeInsets.symmetric(horizontal: 40),
                           decoration:  BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Colors.deepOrange,

                         ),
                           child: OutlinedButton(
                             onPressed: null,
                             child: const Text("Login", style: TextStyle(
                               fontSize: 20,
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                             ),),
                               style: ButtonStyle(
                                   side: MaterialStateProperty.all(const BorderSide(style: BorderStyle.none))),
                           ),
                         ),
                             const SizedBox(height: 30,),

                             const Center(
                               child:  Text('Or continue with social media',
                                 style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),),
                             ),
                             const SizedBox(height: 40,),

                             Row(
                               children: [
                                 //github
                                 Expanded(
                                   flex:2,
                                   child: Container(
                                     padding: const EdgeInsets.fromLTRB(3, 5, 3, 5),
                                     //margin: const EdgeInsets.symmetric(horizontal: 20),
                                     decoration:  BoxDecoration(
                                       borderRadius: BorderRadius.circular(20),
                                       color: Colors.black,

                                     ),
                                     child: OutlinedButton(
                                       onPressed: (){
                                         launch("https://github.com/");
                                       },
                                       child: const Text("Github", style: TextStyle(
                                         fontSize: 20,
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                       ),),
                                       style: ButtonStyle(
                                           side: MaterialStateProperty.all(const BorderSide(style: BorderStyle.none))),
                                     ),
                                   ),
                                 ),
                                 const SizedBox(width: 40,),
                                 //twitter
                                 Expanded(
                                   flex: 2,
                                   child: Container(
                                     padding: const EdgeInsets.fromLTRB(3, 5, 3, 5),
                                     //margin: const EdgeInsets.symmetric(horizontal: 20),
                                     decoration:  BoxDecoration(
                                       borderRadius: BorderRadius.circular(20),
                                       color: Colors.blue,

                                     ),
                                     child: OutlinedButton(
                                       onPressed:  (){
                                         launch("https://twitter.com/");
                                       },
                                       child: const Text("Twitter", style: TextStyle(
                                         fontSize: 20,
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                       ),),
                                       style: ButtonStyle(
                                           side: MaterialStateProperty.all(const BorderSide(style: BorderStyle.none))),
                                     ),
                                   ),
                                 ),
                               ],
                             ),

                           ],
                         ),
                       ),

                     ) ,

                 ),




                  ],


                ),



            ),

      );

  }

}