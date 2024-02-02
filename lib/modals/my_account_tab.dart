import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountTab extends StatelessWidget {
  const MyAccountTab({
    super.key,
    required this.ordersPending,
    required this.wishlist,
  });
  final int ordersPending;
  final int wishlist;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
              border: Border(right: BorderSide(color: Colors.black))),
          child: Padding(
            padding: const EdgeInsets.only(right: 36),
            child: Column(
              children: [
                Text(
                  ordersPending.toString(),
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Pending Orders',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 36),
          child: Column(
            children: [
              Text(
                wishlist.toString(),
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Wishlist',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
