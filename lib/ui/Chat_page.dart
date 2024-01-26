import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:olx_clone/modals/chats.dart';
import 'package:olx_clone/ui/home_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:slidable_button/slidable_button.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int selposition = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(241, 245, 248, 1),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 56.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // buying | selling tabß
                Center(
                  child: Container(
                    width: size.width * 0.6,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(200, 220, 230, 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40)),
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('  Buying'.toUpperCase(),
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    color:
                                        const Color.fromRGBO(77, 97, 132, 1))),
                            Text(
                              'Selling  '.toUpperCase(),
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: const Color.fromRGBO(77, 97, 132, 1)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // chats
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 36),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: ListView.builder(
                        itemCount: chatdetails.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
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
                                width: double.infinity,
                                decoration: const BoxDecoration(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 12.0),
                                            child: Container(
                                              height: size.height * 0.07,
                                              width: size.height * 0.07,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.black,
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          chatdetails[index]
                                                              ["image"]),
                                                      fit: BoxFit.cover)),
                                            ),
                                          ),
                                          Container(
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
                                                      ? chatdetails[index]
                                                                  ["name"]
                                                              .toString()
                                                              .substring(
                                                                  0, 15) +
                                                          ".."
                                                      : chatdetails[index]
                                                              ["name"]
                                                          .toString(),
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Color.fromRGBO(
                                                          77, 97, 132, 1)),
                                                ),
                                                Text(
                                                  chatdetails[index][
                                                                  "lastmessage"]
                                                              .toString()
                                                              .length >
                                                          15
                                                      ? chatdetails[index][
                                                                  "lastmessage"]
                                                              .toString()
                                                              .substring(
                                                                  0, 15) +
                                                          ".."
                                                      : chatdetails[index]
                                                          ["lastmessage"],
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      color: Color.fromRGBO(
                                                          77, 97, 132, 1)),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            chatdetails[index]["sentday"],
                                            style: GoogleFonts.poppins(
                                                color: Color.fromRGBO(
                                                    152, 168, 191, 1)),
                                          ),
                                          Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30))),
                                              child: Center(
                                                  child: Text(
                                                chatdetails[index]["unreadno"]
                                                    .toString(),
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

void doNothing(BuildContext context) {}
