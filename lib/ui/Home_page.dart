import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olx_clone/assets/products.dart';

import 'package:olx_clone/modals/widgets.dart';
import 'package:olx_clone/ui/Chat_page.dart';
import 'package:olx_clone/ui/product_page.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromRGBO(241, 245, 248, 1),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: false,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Location",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: const Color.fromRGBO(77, 97, 132, 1),
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    const Icon(Icons.place),
                    Text(
                      "Chennai",
                      style: GoogleFonts.poppins(
                          fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            actions: const [
              Card(
                elevation: 4,
                shape: CircleBorder(),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFE1E8F0),
                      radius: 20,
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductPage(
                          details: products[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(products[index]["images"][0]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Rs ${products[index]["price"]}",
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              color: Color.fromRGBO(152, 168, 191, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            products[index]["Description"],
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color.fromRGBO(152, 168, 191, 1),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.place,
                                size: 30,
                              ),
                              Text(
                                products[index]["Location"],
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: products.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 30.0,
              mainAxisSpacing: 30.0,
              childAspectRatio: 1 / 1.3,
            ),
          ),
        ],
      ),
    ));
  }
}

            // child: Stack(clipBehavior: Clip.none, children: [
            //   Positioned(
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         const SizedBox(
            //           height: 30,
            //         ),
            //         ListTile(
            //             //tileColor:Color(0xFFE1E8F0),
            //             title: Text("Your Location",
            //                 style: GoogleFonts.poppins(
            //                     fontSize: 24,
            //                     color: const Color.fromRGBO(77, 97, 132, 1),
            //                     fontWeight: FontWeight.bold)),
            //             subtitle: Row(
            //               children: [
            //                 const Icon(Icons.place),
            //                 Text(
            //                   "Chennai",
            //                   style: GoogleFonts.poppins(
            //                       fontSize: 18, color: Colors.black),
            //                 ),
            //               ],
            //             ),
            //             trailing: const Card(
            //               elevation: 4,
            //               shape: CircleBorder(),
            //               child: SizedBox(
            //                 width: 40,
            //                 height: 40,
            //                 child: Center(
            //                   child: CircleAvatar(
            //                     backgroundColor: Color(0xFFE1E8F0),
            //                     radius: 20,
            //                     child: Icon(
            //                       Icons.notifications_none,
            //                       color: Colors.black,
            //                       size: 20,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             )),
            //         const SizedBox(
            //           height: 40,
            //         ),






            // --------------------------
            //         Center(
            //           child: Container(
            //             height: 50,
            //             decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(15),
            //                 color: const Color.fromRGBO(227, 237, 247, 1),
            //                 boxShadow: const [
            //                   BoxShadow(
            //                     color: Color.fromRGBO(213, 227, 236, 1),
            //                     offset: Offset(4, 4),
            //                     blurRadius: 10,
            //                     spreadRadius: 1,
            //                   ),
            //                   BoxShadow(
            //                     color: Colors.white,
            //                     offset: Offset(-4, -4),
            //                     blurRadius: 10,
            //                     spreadRadius: 1,
            //                   ),
            //                 ],
            //                 gradient: const LinearGradient(
            //                     begin: Alignment.topLeft,
            //                     end: Alignment.bottomRight,
            //                     colors: [
            //                       Color.fromRGBO(213, 227, 236, 1),
            //                       Colors.white
            //                     ])),
            //             child: SizedBox(
            //               width: size.width * 0.8,
            //               child: Row(
            //                 children: [
            //                   Padding(
            //                     padding: const EdgeInsets.all(8.0),
            //                     child: SizedBox(
            //                       width: size.width * 0.7,
            //                       child: TextFormField(
            //                         decoration: const InputDecoration(
            //                           icon: Icon(Icons.search),
            //                           hintText: '   Search anything..',
            //                           border: InputBorder.none,
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ),
            //         const SizedBox(
            //           height: 40,
            //         ),
            //         SizedBox(
            //             height: 120,
            //             width: size.width,
            //             child: const Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 QuickItems(
            //                   iconsdata: Icons.category_outlined,
            //                   title: "Categories",
            //                 ),
            //                 QuickItems(
            //                   iconsdata: Icons.piano,
            //                   title: "Hobbies",
            //                 ),
            //                 QuickItems(
            //                   iconsdata: Icons.apartment,
            //                   title: "Properties",
            //                 ),
            //                 QuickItems(
            //                   iconsdata: Icons.tv,
            //                   title: "Electronics\n& Gadgets",
            //                 ),
            //               ],
            //             )),
            //         const SizedBox(
            //           height: 10,
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(left: 20.0),
            //           child: Text(
            //             "Fresh Reccomendations",
            //             style: GoogleFonts.poppins(
            //               fontSize: 24,
            //               fontWeight: FontWeight.bold,
            //               color: const Color.fromRGBO(77, 97, 132, 1),
            //             ),
            //           ),
            //         ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 10.0, right: 10),
                    //   child: SizedBox(
                    //       height: size.height * 0.5,
                    //       width: size.width,
                    //       child: GridView.builder(
                    //         gridDelegate:
                    //             const SliverGridDelegateWithFixedCrossAxisCount(
                    //           crossAxisCount: 2,
                    //           crossAxisSpacing: 30.0,
                    //           mainAxisSpacing: 30.0,
                    //           childAspectRatio: (1 / 1.3),
                    //         ),
                    //         itemCount: products.length,
                    //         itemBuilder: (BuildContext context, int index) {
                    //           return GestureDetector(
                    //             onTap: () {
                    //               Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                       builder: (context) => ProductPage(
                    //                             details: products[index],
                    //                           )));
                    //             },
                    //             child: Container(
                    //               height: 100,
                    //               width: 60,
                    //               decoration: const BoxDecoration(
                    //                   borderRadius:
                    //                       BorderRadius.all(Radius.circular(30)),
                    //                   color: Colors.white,
                    //                   boxShadow: [
                    //                     BoxShadow(
                    //                         color: Colors.black54,
                    //                         blurRadius: 10,
                    //                         offset: Offset(0, 3))
                    //                   ]),
                    //               child: Column(
                    //                 mainAxisAlignment: MainAxisAlignment.start,
                    //                 crossAxisAlignment: CrossAxisAlignment.start,
                    //                 children: [
                    //                   Container(
                    //                       height: 120,
                    //                       width: double.infinity,
                    //                       decoration: BoxDecoration(
                    //                         borderRadius: const BorderRadius.only(
                    //                             topRight: Radius.circular(30),
                    //                             topLeft: Radius.circular(30)),
                    //                         image: DecorationImage(
                    //                             image: NetworkImage(
                    //                                 products[index]["images"][0]),
                    //                             fit: BoxFit.cover),
                    //                       )),
                    //                   const SizedBox(
                    //                     height: 20,
                    //                   ),
                    //                   Padding(
                    //                     padding: const EdgeInsets.only(left: 8.0),
                    //                     child: Text(
                    //                       "Rs ${products[index]["price"]}",
                    //                       style: GoogleFonts.poppins(
                    //                           fontSize: 24,
                    //                           color: const Color.fromRGBO(
                    //                               152, 168, 191, 1),
                    //                           fontWeight: FontWeight.bold),
                    //                     ),
                    //                   ),
                    //                   Padding(
                    //                     padding: const EdgeInsets.only(left: 8.0),
                    //                     child: Text(
                    //                       products[index]["Description"],
                    //                       style: GoogleFonts.poppins(
                    //                           fontSize: 16,
                    //                           color: const Color.fromRGBO(
                    //                               152, 168, 191, 1)),
                    //                     ),
                    //                   ),
                    //                   const SizedBox(
                    //                     height: 15,
                    //                   ),
                    //                   SingleChildScrollView(
                    //                     scrollDirection: Axis.vertical,
                    //                     child: Row(
                    //                       mainAxisAlignment:
                    //                           MainAxisAlignment.start,
                    //                       children: [
                    //                         const Icon(
                    //                           Icons.place,
                    //                           size: 30,
                    //                         ),
                    //                         Text(
                    //                           products[index]["Location"],
                    //                           style: GoogleFonts.poppins(
                    //                               fontSize: 14,
                    //                               color: Colors.blueGrey),
                    //                         )
                    //                       ],
                    //                     ),
                    //                   )
                    //                 ],
                    //               ),
                    //             ),
                    //           );
                    //         },
                    //       )),
                    // )
            //       ],
            //     ),
            //   ),
            //   Positioned(
            //       bottom: 10,
            //       child: SizedBox(
            //         width: size.width,
            //         child: Center(
            //           child: Container(
            //             width: size.width * 0.95,
            //             height: 80,
            //             decoration: BoxDecoration(
            //                 color: const Color.fromRGBO(218, 226, 235, 1),
            //                 borderRadius:
            //                     const BorderRadius.all(Radius.circular(20)),
            //                 gradient: const LinearGradient(
            //                     begin: Alignment.topCenter,
            //                     end: Alignment.bottomCenter,
            //                     colors: [
            //                       Color.fromRGBO(242, 246, 249, 1),
            //                       Color.fromRGBO(218, 226, 235, 1),
            //                     ]),
            //                 boxShadow: [
            //                   BoxShadow(
            //                       color: Colors.grey[500]!,
            //                       blurRadius: 15,
            //                       spreadRadius: 1)
            //                 ]),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Container(
            //                     width: 60,
            //                     height: 60,
            //                     decoration: const BoxDecoration(
            //                         gradient: LinearGradient(
            //                             begin: Alignment.topLeft,
            //                             end: Alignment.center,
            //                             colors: [
            //                               Color.fromRGBO(197, 214, 230, 1),
            //                               Color.fromRGBO(246, 242, 235, 1),
            //                             ]),
            //                         borderRadius:
            //                             BorderRadius.all(Radius.circular(20))),
            //                     child: Column(
            //                       mainAxisAlignment: MainAxisAlignment.center,
            //                       children: [
            //                         const Icon(
            //                           Icons.home_outlined,
            //                           size: 30,
            //                           color: Color.fromRGBO(77, 97, 132, 1),
            //                         ),
            //                         Text(
            //                           "EXPLORE",
            //                           style: GoogleFonts.poppins(
            //                               color: const Color.fromRGBO(
            //                                   77, 97, 132, 1)),
            //                         )
            //                       ],
            //                     )),
            //                 GestureDetector(
            //                     onTap: () {
            //                       Navigator.push(
            //                           context,
            //                           PageTransition(
            //                               child: ChatScreen(),
            //                               type: PageTransitionType.rightToLeft));
            //                     },
            //                     child: const Icon(
            //                       Icons.chat_outlined,
            //                       size: 30,
            //                       color: Color.fromRGBO(154, 184, 210, 1),
            //                     )),
            //                 const Icon(
            //                   Icons.add_circle_outline,
            //                   size: 30,
            //                   color: Color.fromRGBO(154, 184, 210, 1),
            //                 ),
            //                 const Icon(
            //                   Icons.favorite_border,
            //                   size: 30,
            //                   color: Color.fromRGBO(154, 184, 210, 1),
            //                 ),
            //                 const Icon(
            //                   Icons.person_2_outlined,
            //                   size: 30,
            //                   color: Color.fromRGBO(154, 184, 210, 1),
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //       ))
            // ],
            