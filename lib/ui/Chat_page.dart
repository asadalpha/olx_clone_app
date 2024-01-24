import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olx_clone/ui/home_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:slidable_button/slidable_button.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List chatdetails = [
    {
      "image":
          "https://w7.pngwing.com/pngs/57/165/png-transparent-cartoon-graphy-thinking-cartoon-people-cartoon-character-photography-people.png",
      "name": "Sharan Prakash",
      "lastmessage": "Check Check",
      "unreadno": 5,
      "sentday": "Today"
    },
    {
      "image":
          "https://i.pinimg.com/736x/f8/2f/ba/f82fbac7514f944aacc0257445c1f89e.jpg",
      "name": "ABCD",
      "lastmessage": "Hello",
      "unreadno": 2,
      "sentday": "Today"
    },
    {
      "image":
          "https://img.myloview.com/posters/cartoon-character-cheerful-girl-in-a-red-t-shirt-and-jeans-points-a-finger-up-on-a-white-background-3d-render-illustration-700-265494981.jpg",
      "name": "DEF",
      "lastmessage": "Welcome to the App",
      "unreadno": 6,
      "sentday": "Yesterday"
    },
    {
      "image":
          "https://img.myloview.com/posters/cartoon-character-cheerful-girl-in-a-red-t-shirt-and-jeans-points-a-finger-up-on-a-white-background-3d-render-illustration-700-265494981.jpg",
      "name": "DEF",
      "lastmessage": "Welcome to the App",
      "unreadno": 6,
      "sentday": "Yesterday"
    },
    {
      "image":
          "https://img.myloview.com/posters/cartoon-character-cheerful-girl-in-a-red-t-shirt-and-jeans-points-a-finger-up-on-a-white-background-3d-render-illustration-700-265494981.jpg",
      "name": "DEF",
      "lastmessage": "Welcome to the App",
      "unreadno": 6,
      "sentday": "Yesterday"
    },
  ];
  int selposition = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 245, 248, 1),
      resizeToAvoidBottomInset: false,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: size.height * 0.13,
            left: 0,
            child: SizedBox(
              width: size.width,
              child: Center(
                child: Container(
                  width: size.width * 0.6,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[500]!,
                            blurRadius: 10,
                            offset: const Offset(4, 4),
                            spreadRadius: 1),
                        const BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            offset: Offset(-4, -4),
                            spreadRadius: 1)
                      ]),
                  child: Center(
                    child: HorizontalSlidableButton(
                      width: size.width * 0.6,
                      height: 70,
                      buttonWidth: 120.0,
                      color: Color.fromRGBO(200, 220, 230, 1),
                      buttonColor: Colors.white,
                      dismissible: false,
                      label: Center(
                          child: Text(
                        selposition == 0
                            ? 'Buying'.toUpperCase()
                            : "Selling".toUpperCase(),
                        style: GoogleFonts.poppins(
                            color: Color.fromRGBO(77, 97, 132, 1),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('  Buying'.toUpperCase(),
                                style: GoogleFonts.poppins(
                                    fontSize: 30, color: Colors.white)),
                            Text(
                              'Selling  '.toUpperCase(),
                              style: GoogleFonts.poppins(
                                  fontSize: 30, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      onChanged: (position) {
                        setState(() {
                          if (position == SlidableButtonPosition.end) {
                            selposition = 1;
                          } else {
                            selposition = 0;
                          }
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: size.height * 0.2,
              child: SizedBox(
                width: size.width,
                height: size.height * 0.7,
                child: ListView.builder(
                    itemCount: chatdetails.length,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 10,
                        ),
                        child: Slidable(
                          key: const ValueKey(1),
                          endActionPane: const ActionPane(
                              motion: ScrollMotion(),
                              children: [
                                SlidableAction(
                                  onPressed: doNothing,
                                  backgroundColor:
                                      Color.fromRGBO(186, 225, 254, 1),
                                  foregroundColor: Colors.white,
                                  icon: Icons.menu,
                                ),
                                SlidableAction(
                                  onPressed: doNothing,
                                  backgroundColor:
                                      Color.fromRGBO(255, 99, 100, 1),
                                  foregroundColor: Colors.white,
                                  icon: Icons.delete_sweep,
                                )
                              ]),
                          child: Container(
                            width: size.width,
                            height: size.height * 0.13,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Colors.white,
                                      Color.fromRGBO(246, 248, 250, 1)
                                    ])),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: size.height * 0.1,
                                  height: size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      color: Colors.black,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              chatdetails[index]["image"]),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: size.width * 0.43,
                                  height: size.height * 0.1,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        chatdetails[index]["name"]
                                                    .toString()
                                                    .length >
                                                15
                                            ? chatdetails[index]["name"]
                                                    .toString()
                                                    .substring(0, 15) +
                                                ".."
                                            : chatdetails[index]["name"]
                                                .toString(),
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24,
                                            color:
                                                Color.fromRGBO(77, 97, 132, 1)),
                                      ),
                                      Text(
                                        chatdetails[index]["lastmessage"]
                                                    .toString()
                                                    .length >
                                                15
                                            ? chatdetails[index]["lastmessage"]
                                                    .toString()
                                                    .substring(0, 15) +
                                                ".."
                                            : chatdetails[index]["lastmessage"],
                                        style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color:
                                                Color.fromRGBO(77, 97, 132, 1)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: size.width * 0.15,
                                  height: size.height * 0.1,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        chatdetails[index]["sentday"],
                                        style: GoogleFonts.poppins(
                                            color: Color.fromRGBO(
                                                152, 168, 191, 1)),
                                      ),
                                      Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Center(
                                              child: Text(
                                            chatdetails[index]["unreadno"]
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )),
        ],
      ),
    );
  }
}

void doNothing(BuildContext context) {}
