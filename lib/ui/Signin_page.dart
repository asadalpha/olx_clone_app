import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class signInScreen extends StatelessWidget {
  const signInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(


      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 130,
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
              Material(
                elevation: 4.0,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Material(
                elevation: 4.0,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40.0),
          GestureDetector(
            onTap: (){
              Navigator.popAndPushNamed(context, "/home");
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
            ],
          ),
        ),
      ),
    );
  }
}
