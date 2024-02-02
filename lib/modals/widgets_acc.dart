import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickItemsAcc extends StatelessWidget {
  const QuickItemsAcc({
    super.key,
    required this.iconsdata,
  });

  final IconData? iconsdata;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle, // Make the container circular
            color: Color.fromRGBO(233, 243, 252, 1),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10,
                offset: Offset(1, 1),
              ),
              BoxShadow(
                color: Colors.black38,
                blurRadius: 5,
                offset: Offset(1, 2),
              ),
            ],
          ),
          child: iconsdata != null
              ? Icon(
                  iconsdata,
                  color: const Color.fromRGBO(154, 184, 210, 1),
                )
              : Container(),
        ),
      ],
    );
  }
}
