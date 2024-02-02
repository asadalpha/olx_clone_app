import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olx_clone/modals/my_account_tab.dart';
import 'package:olx_clone/modals/widgets.dart';
import 'package:olx_clone/modals/widgets_acc.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.0,
          backgroundColor: Colors.transparent,
          title: Text(
            'My Account',
            style: GoogleFonts.poppins(
                fontSize: 26,
                color: const Color.fromRGBO(77, 97, 132, 1),
                fontWeight: FontWeight.bold),
          ),
          leading: const Icon(Icons.settings),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.notifications_none_rounded),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header

              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // user info (both blocks)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Column(
                        children: [
                          // block 1
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // profile image
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/profile-circle.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                ),

                                // name info
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Name of User',
                                          style: GoogleFonts.poppins(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Username',
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xFF757575)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                                // sizedbox
                                Expanded(
                                  child: SizedBox(
                                    height: 50,
                                    child: Container(
                                        // The SizedBox will take all the remaining width
                                        ),
                                  ),
                                ),

                                // edit profile info
                                const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.edit))
                              ],
                            ),
                          ),

                          // block 2
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(233, 243, 252, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 10,
                                      offset: Offset(-2, -7)),
                                  BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 5,
                                      offset: Offset(2, 7))
                                ]),
                            child: const Padding(
                              padding: EdgeInsets.all(24.0),
                              child: MyAccountTab(
                                ordersPending: 2,
                                wishlist: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // OPTIONS
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // My Orders
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(right: 16),
                                    child: QuickItemsAcc(
                                      iconsdata: Icons.card_travel,
                                    )),
                                Text(
                                  'My orders',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(child: Container()),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.chevron_right_rounded,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Change Password
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(right: 16),
                                    child: QuickItemsAcc(
                                      iconsdata: Icons.airplane_ticket_outlined,
                                    )),
                                Text(
                                  'Coupons',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(child: Container()),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.chevron_right_rounded,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Payment Methods
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(right: 16),
                                    child: QuickItemsAcc(
                                      iconsdata: Icons.help_outline_outlined,
                                    )),
                                Text(
                                  'Help Center',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(child: Container()),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.chevron_right_rounded,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Logout
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(right: 16),
                                    child: QuickItemsAcc(
                                      iconsdata: Icons.text_snippet_outlined,
                                    )),
                                Text(
                                  'Terms of Use',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(child: Container()),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.chevron_right_rounded,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Log-out
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(right: 16),
                                    child: QuickItemsAcc(
                                      iconsdata: Icons.logout_outlined,
                                    )),
                                Text(
                                  'Log-out',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(child: Container()),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.chevron_right_rounded,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
