import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olx_clone/modals/products.dart';
import 'package:olx_clone/modals/widgets.dart';
import 'package:olx_clone/ui/product_page.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(241, 245, 248, 1),
          toolbarHeight: 70.0,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Location",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: const Color.fromRGBO(77, 97, 132, 1),
                      fontWeight: FontWeight.bold),
                ),
                const Row(
                  children: [
                    Icon(Icons.place),
                    Text(
                      "Chennai",
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Card(
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
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 16,
            right: 16,
            bottom: 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // textformfield
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                height: 50, // Add a specific height to the container
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(227, 237, 247, 1),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(213, 227, 236, 1),
                      offset: Offset(4, 4),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color.fromRGBO(213, 227, 236, 1), Colors.white],
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.search),
                            hintText: '   Search anything..',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // icons
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    QuickItems(
                      iconsdata: Icons.category_outlined,
                      title: "Categories",
                    ),
                    QuickItems(
                      iconsdata: Icons.piano,
                      title: "Hobbies",
                    ),
                    QuickItems(
                      iconsdata: Icons.apartment,
                      title: "Properties",
                    ),
                    QuickItems(
                      iconsdata: Icons.tv,
                      title: "Electronics\n& Gadgets",
                    ),
                  ],
                ),
              ),

              // products list
              Expanded(
                child: SizedBox(
                  height: size.height, // Adjust height accordingly
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                      childAspectRatio: (1 / 1.5),
                    ),
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                        details: products[index],
                                      )));
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 6,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(16),
                                        topLeft: Radius.circular(16)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            products[index]["images"][0]),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0, vertical: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          "Rs ${products[index]["price"]}",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: const Color.fromRGBO(
                                                  152, 168, 191, 1),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          products[index]["Description"],
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: const Color.fromRGBO(
                                                  152, 168, 191, 1)),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.place,
                                            size: 24,
                                          ),
                                          Expanded(
                                            child: Text(
                                              products[index]["Location"],
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 12,
                                                  color: Colors.blueGrey),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



   

   ///
   ///
    // Center(
                  //   child: Container(
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(15),
                      //   color: const Color.fromRGBO(227, 237, 247, 1),
                      //   boxShadow: const [
                      //     BoxShadow(
                      //       color: Color.fromRGBO(213, 227, 236, 1),
                      //       offset: Offset(4, 4),
                      //       blurRadius: 10,
                      //       spreadRadius: 1,
                      //     ),
                      //     // BoxShadow(
                      //     //   color: Colors.white,
                      //     //   offset: Offset(-4, -4),
                      //     //   blurRadius: 10,
                      //     //   spreadRadius: 1,
                      //     // ),
                      //   ],
                      //   // gradient: const LinearGradient(
                      //   //   begin: Alignment.topLeft,
                      //   //   end: Alignment.bottomRight,
                      //   //   colors: [Color.fromRGBO(213, 227, 236, 1), Colors.white],
                      //   // ),
                      // ),
                      // child: Row(
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: TextFormField(
                      //         decoration: const InputDecoration(
                      //           icon: Icon(Icons.search),
                      //           hintText: '   Search anything..',
                      //           border: InputBorder.none,
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                  //   ),
                  // ),

  //                 SizedBox(
  //                     height: 120,
  //                     width: size.width,
  //                     child: const Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                       children: [
  //                         QuickItems(
  //                           iconsdata: Icons.category_outlined,
  //                           title: "Categories",
  //                         ),
  //                         QuickItems(
  //                           iconsdata: Icons.piano,
  //                           title: "Hobbies",
  //                         ),
  //                         QuickItems(
  //                           iconsdata: Icons.apartment,
  //                           title: "Properties",
  //                         ),
  //                         QuickItems(
  //                           iconsdata: Icons.tv,
  //                           title: "Electronics\n& Gadgets",
  //                         ),
  //                       ],
  //                     )),
  //  /