import 'package:flutter/material.dart';




class InaboxCard extends StatelessWidget {
 
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(bottom: 20, right: 20,left: 20),
      height: 100,
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          new BoxShadow(
            color: Colors.white.withOpacity(0.5),
            blurRadius: 10.0,
          )
        ]
      ),

    );
  }
}

     