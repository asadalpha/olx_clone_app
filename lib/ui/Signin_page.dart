import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;

    var boxShadow = [
      BoxShadow(
          color: Colors.grey[500]!,
          blurRadius: 10,
          offset: const Offset(4, 4),
          spreadRadius: 0.5),
      const BoxShadow(
          color: Colors.white,
          blurRadius: 10,
          offset: Offset(-5, -5),
          spreadRadius: 1)
    ];
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100.0,
            ),
            // OLX Logo
            Container(
              alignment: Alignment.center,
              child: Text("0lx",
                  style: GoogleFonts.poppins(
                    fontSize: 90.0 * devicePixelRatio,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff3B76FE),
                  )),
            ),

            // Material textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Material(
                      elevation: 4.0,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(10.0),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: TextField(
                          decoration: InputDecoration(
                            constraints: BoxConstraints(minHeight: 20.0),
                            hintText: 'Username',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 4.0,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(10.0),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            constraints: BoxConstraints(minHeight: 20.0),
                            hintText: 'Password',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/home");
                },
                child: Container(
                  width: size.width * 0.3,
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xFFE9F3FD),
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                      boxShadow: boxShadow),
                  child: Center(
                      child: Text(
                    "Sign-in",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
