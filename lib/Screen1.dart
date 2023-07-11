import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget{
  Widget build(BuildContext context){
    return
      Scaffold(


        body: Column(
        children:<Widget> [
          SizedBox(
            width: double.infinity,
            height: 140,
          ),
          SafeArea(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Olx",
              style:TextStyle(
                fontSize:120.0,
                fontWeight:FontWeight.w900,
                color:Color(0xff3B76FE),
              ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 150,
          ),
          SizedBox(
            width:300,

            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE9F3FD), //background color of button
                    side: BorderSide(width:3, color:Color(0xFFE9F3FC)), //border width and color

                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.fromLTRB(20,20,20,20) ,//content padding inside button
                ), onPressed: () {

            },
              child:Text(
                  "Register",
                style:TextStyle(
                  color:Colors.black,
                )
              ),

            ),
          ),
          SizedBox(
            height:10.0,

          ),
          SizedBox(
            width:300,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFE9F3FD), //background color of button
                side: BorderSide(width:3, color:Color(0xFFE9F3FC)), //border width and color

                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.fromLTRB(20,20,20,20) ,//content padding inside button
              ), onPressed: () {
              Navigator.popAndPushNamed(context,'//');
            },
              child:Text(
                  "Sign in",
                  style:TextStyle(
                    color:Colors.black,
                  )
              ),

            ),
          ),
          SizedBox(
            height:10.00,
          ),
          Text(
              "Sign in with",
            style:TextStyle(
              color:Colors.black,
            )

          ),


            ],
          ),



    );

  }
}

