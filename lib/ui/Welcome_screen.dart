import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    var boxShadow1 = [
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
    const boxShadow2 = [
      BoxShadow(color: Colors.black54, blurRadius: 10, offset: Offset(2, 7)),
      BoxShadow(color: Colors.white70, blurRadius: 5, offset: Offset(-2, -7))
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text("0lx",
                  style: GoogleFonts.poppins(
                    fontSize: 50.0 * devicePixelRatio,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff3B76FE),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: 200,
                child: GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/registerpage");
                  },
                  child: Container(
                    width: size.width * 0.3,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color(0xFFE9F3FD),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40)),
                        boxShadow: boxShadow1),
                    child: Center(
                        child: Text(
                      "Register",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: 200,
                child: GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/signinpage");
                  },
                  child: Container(
                    width: size.width * 0.3,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color(0xFFE9F3FD),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40)),
                        boxShadow: boxShadow1),
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
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Sign in with",
                        style: GoogleFonts.poppins(fontSize: 14)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Color(0xFFE9F3FD),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              boxShadow: boxShadow2),
                          child: Center(
                              child: Text(
                            "f",
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.blueGrey.withOpacity(0.6),
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Color(0xFFE9F3FD),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              boxShadow: boxShadow2),
                          child: Center(
                              child: Text(
                            "G",
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.blueGrey.withOpacity(0.6),
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
