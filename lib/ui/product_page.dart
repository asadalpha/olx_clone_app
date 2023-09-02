import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.details});
  final Map<String,dynamic> details;
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentPage=0;
  IconData likedstatus=Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: ,
      resizeToAvoidBottomInset: false,
      body: Stack(
        clipBehavior: Clip.none,
        children: [

          Positioned(
              top: 0,
              child: SizedBox(
            width: size.width,
            height: size.height*0.7,
                child: PageView.builder(
                    itemCount: widget.details["images"].length,
                    pageSnapping: true,
                    onPageChanged: (page){
                      setState(() {
                        currentPage=page;
                      });
                    },
                    itemBuilder: (context,pagePosition){
                      return SizedBox(
                        width: size.width,
                        height: size.height*0.7,
                        child: Image.network(widget.details["images"][pagePosition],fit: BoxFit.cover,),
                      );

                }),
          )),
          Positioned(
              right: 20,
              top: size.height*0.53,
              child: Container(
                width: size.width*0.22,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(child: Text("${currentPage+1} / ${widget.details["images"].length}",style: GoogleFonts.poppins(fontSize: 24,color: Colors.white),)),
                

          )),
          Positioned(
              top: 0,
              child: SizedBox(
                width: size.width,
                height: size.height*0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 20,),
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,)),
                    SizedBox(width: size.width*0.65,),
                    const Icon(Icons.upload,color: Colors.white,size: 30,),
                    const SizedBox(width: 20,),
                    const Icon(Icons.menu,color: Colors.white,size: 30,)


                  ],
                ),
              )),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              height: size.height*0.4,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(241, 245, 248, 1),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Rp ${widget.details["price"]}",style: GoogleFonts.poppins(fontSize: 50,color: Color.fromRGBO(105, 125, 152, 1),fontWeight: FontWeight.bold),),
                          GestureDetector(onTap:(){
                            if(likedstatus==Icons.favorite_border){
                              setState(() {
                                likedstatus=Icons.favorite;
                              });
                            }
                            else{
                              setState(() {
                                likedstatus=Icons.favorite_border;
                              });
                            }
                          },
                              child: Icon(likedstatus,size: 40,color: Color.fromRGBO(105, 125, 152, 1),))
                        ],
                      ),
                      const SizedBox(height: 5,),
                      Text(widget.details["Description"],style: GoogleFonts.poppins(fontSize: 20,color: Color.fromRGBO(105, 125, 152, 1)),),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.place,size: 30,),
                          Text(widget.details["Location"],style: GoogleFonts.poppins(fontSize: 18,color: Colors.blueGrey),)
                        ],
                      ),
                      const SizedBox(height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              width: size.width*0.3,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFE9F3FD),
                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey[500]!,blurRadius: 10,offset: Offset(4,4),spreadRadius: 1),
                                    BoxShadow(color: Colors.white,blurRadius: 10,offset: Offset(-4, -4),spreadRadius: 1)
                                  ]
                              ),
                              child: Center(child: Text("Chat",style: GoogleFonts.poppins(fontSize: 24,color: Colors.blueGrey,fontWeight: FontWeight.bold),)),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              width: size.width*0.3,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xFFE9F3FD),
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                boxShadow: [
                                  BoxShadow(color: Colors.grey[500]!,blurRadius: 10,offset: Offset(4,4),spreadRadius: 1),
                                  BoxShadow(color: Colors.white,blurRadius: 10,offset: Offset(-4, -4),spreadRadius: 1)
                                ]
                              ),
                              child: Center(child: Text("Call",style: GoogleFonts.poppins(fontSize: 24,color: Colors.blueGrey,fontWeight: FontWeight.bold),)),
                            ),
                          )
                        ],
                      )
                    ],

                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
