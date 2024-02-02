import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickItems extends StatelessWidget {
  const QuickItems({
    super.key,
    required this.iconsdata,
    required this.title,
  });
  final IconData iconsdata;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(233, 243, 252, 1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    blurRadius: 10,
                    offset: Offset(-2, -7)),
                BoxShadow(
                    color: Colors.black38, blurRadius: 5, offset: Offset(2, 7))
              ]),
          child: Icon(
            iconsdata,
            color: const Color.fromRGBO(154, 184, 210, 1),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 12, color: const Color.fromRGBO(152, 168, 191, 1)),
        )
      ],
    );
  }
}
