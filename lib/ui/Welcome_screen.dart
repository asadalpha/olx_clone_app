import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    Size size=MediaQuery.of(context).size;
    return
      Scaffold(


        body: Column(
        children:<Widget> [
          const SizedBox(
            width: double.infinity,
            height: 240,
          ),
          SafeArea(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "0lx",
              style:
                  GoogleFonts.poppins(fontSize: 200,fontWeight: FontWeight.bold,color: const Color(0xff3B76FE),)

              /*TextStyle(
                fontSize:200.0,
                fontWeight:FontWeight.w900,
                color:Color(0xff3B76FE),
              ),*/
              ),
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 80,
          ),
          SizedBox(
            width:300,

            child: GestureDetector(
              onTap: (){
                
              },
              child: Container(
                width: size.width*0.3,
                height: 60,
                decoration: BoxDecoration(
                    color: const Color(0xFFE9F3FD),
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    boxShadow: [
                      BoxShadow(color: Colors.grey[500]!,blurRadius: 10,offset: const Offset(4,4),spreadRadius: 0.5),
                      const BoxShadow(color: Colors.white,blurRadius: 10,offset: Offset(-5, -5),spreadRadius: 1)
                    ]
                ),
                child: Center(child: Text("Register",style: GoogleFonts.poppins(fontSize: 24,color: Colors.blueGrey,fontWeight: FontWeight.bold),)),
              ),
            ),

            ),
          const SizedBox(
            height:30.0,

          ),
          SizedBox(
            width:300,

            child: GestureDetector(
              onTap: (){
                Navigator.popAndPushNamed(context, "/signinpage");

              },
              child: Container(
                width: size.width*0.3,
                height: 60,
                decoration: BoxDecoration(
                    color: const Color(0xFFE9F3FD),
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    boxShadow: [
                      BoxShadow(color: Colors.grey[500]!,blurRadius: 10,offset: const Offset(4,4),spreadRadius: 0.5),
                      const BoxShadow(color: Colors.white,blurRadius: 10,offset: Offset(-5, -5),spreadRadius: 1)
                    ]
                ),
                child: Center(child: Text("Sign-in",style: GoogleFonts.poppins(fontSize: 24,color: Colors.blueGrey,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
          const SizedBox(
            height:30.00,
          ),
          Text(
              "Sign in with",
            style:GoogleFonts.poppins(
              fontSize: 18
            )
          ),
          const SizedBox(
            height:30.00,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  width: 60,
                  height:60,
                  decoration: const BoxDecoration(
                      color: Color(0xFFE9F3FD),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(color: Colors.black54,blurRadius: 10,offset: Offset(2,7)),
                        BoxShadow(color: Colors.white70,blurRadius: 5,offset: Offset(-2, -7))
                      ]
                  ),
                  child: Center(child: Text("f",style: GoogleFonts.poppins(fontSize: 40,color: Colors.blueGrey.withOpacity(0.6),fontWeight: FontWeight.bold),)),
                ),
              ),
              const SizedBox(width: 30,),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      color: Color(0xFFE9F3FD),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(color: Colors.black54,blurRadius: 10,offset: Offset(2,7)),
                        BoxShadow(color: Colors.white70,blurRadius: 5,offset: Offset(-2, -7))
                      ]
                  ),
                  child: Center(child: Text("G",style: GoogleFonts.poppins(fontSize: 40,color: Colors.blueGrey.withOpacity(0.6),fontWeight: FontWeight.bold),)),
                ),
              ),

            ],

          )


            ],
          ),



    );

  }
}

