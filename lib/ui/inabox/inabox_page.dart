import 'package:Black_Note/Models/widget/inbox_card_widget.dart';
import 'package:flutter/material.dart';
import '../../Models/global.dart';
class InaboxPage extends StatefulWidget {
 
  @override
  _InaboxPageState createState() => _InaboxPageState();
}
class _InaboxPageState extends State<InaboxPage> {  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:180),
      color:darkGreyColor,
      child: ListView(children: getList(),),
    );
  }
  List<Widget> getList(){

      List<InaboxCard> list = [];

      for (int i=0; i<10;i++){
          list.add(InaboxCard());
          
      }
      return list;
   }
  
}


  

