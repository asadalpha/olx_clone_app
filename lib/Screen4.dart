import 'package:flutter/material.dart';
class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Column(
          children: [
            SafeArea(
              child: ListTile(
                tileColor:Color(0xFFE1E8F0),
                title:Text(
                  "Your Location",
                  style: TextStyle(
                    color:Colors.black,
                    fontWeight:FontWeight.bold,

                ),

              ),
                  subtitle: Text("Chennai"),
                trailing:Card(
                  elevation: 4,
                  shape: CircleBorder(),
                  child: Container(
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
                ),


              ),
            Container(
              height:50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),

                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 2),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: SizedBox(
                width:300,
                child: TextFormField(

                  decoration: InputDecoration(
                    hintText: '   Search here',
                    border: InputBorder.none,

                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );







  }
}
