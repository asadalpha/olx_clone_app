import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olx_clone/assets/products.dart';
import 'package:olx_clone/ui/product_page.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            expandedHeight: 400.0,
            pinned: true,
            centerTitle: false,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
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
            ),
            actions: [
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
              SliverToBoxAdapter(
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColoredBox(
                      color: Colors.black,
                      child: Container(
                        height: 100,
                      ),
                    )),
              ),
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
                    decoration: const BoxDecoration(
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
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://picsum.photos/250?image=9'),
                              )
                              // image: DecorationImage(
                              //   image: NetworkImage(
                              //       products[index]["images"][0].toString()),
                              //   // Image.network(products[index]["images"][0]),
                              //   fit: BoxFit.cover,
                              // ),
                              ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Rs ${products[index]["price"]}",
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              color: const Color.fromRGBO(152, 168, 191, 1),
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
                              color: const Color.fromRGBO(152, 168, 191, 1),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
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
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 30.0,
              mainAxisSpacing: 30.0,
              childAspectRatio: 1 / 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
