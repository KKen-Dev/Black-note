import 'package:flutter/material.dart';
import '../../Models/global.dart';


class InaboxCard extends StatelessWidget {
 final  String title;
 final String keyValue;
 InaboxCard({this.keyValue,this.title}); 
  @override
  Widget build(BuildContext context){
    return Container(
      key: Key(keyValue),
      margin: EdgeInsets.only(bottom:5),
      height: 100,
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          new BoxShadow(
            color: Colors.white.withOpacity(0.2),
            blurRadius: 10.0,
          )
        ]
      ),
      child: Row(
        children: <Widget>[
          Radio( 
          
          ),
          Column(
            children: <Widget>[
              Text(title, style: darkTodoTitle,)
            ],
          )
        ],
      ),

    );
  }
}

     