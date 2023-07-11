import 'package:flutter/material.dart';
class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              elevation: 4.0,
              shadowColor: Colors.black,
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Material(
              elevation: 4.0,
              shadowColor: Colors.black,
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            SizedBox(height: 40.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFE9F3FD),
                side: BorderSide(width:3, color:Color(0xFFE9F3FC)),
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.fromLTRB(20,20,20,20) ,
              ),
              onPressed: () {
                Navigator.popAndPushNamed(context,'////');
                // Perform login operation
              },
              child: Text(
                  'Sign in',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
