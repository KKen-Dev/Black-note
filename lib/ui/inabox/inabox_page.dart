import 'package:Black_Note/Models/widget/inbox_card_widget.dart';
import 'package:flutter/material.dart';
import '../../Models/global.dart';
class InaboxPage extends StatefulWidget {
 
  @override
  _InaboxPageState createState() => _InaboxPageState();
}
class _InaboxPageState extends State<InaboxPage> {  
  List<InaboxCard> todoItems = [];
  @override
  Widget build(BuildContext context) {
    todoItems =getList();
    return Container(
      
      color:darkGreyColor,
      child: _buildReorderableListSimple(context),
      //child: ReorderableListView(
        //padding: EdgeInsets.only(top:180),
        //children: todoItems,
        //onReorder:_onReorder,

      
      //),
    );
  }
   Widget _buildListTile(BuildContext context, InaboxCard item) {
    return ListTile(
      key: Key(item.keyValue),
      title: InaboxCard(
        title: item.title,
      ),
    );
  }
  
  Widget _buildReorderableListSimple(BuildContext context){
    
    return ReorderableListView(
     
        // handleSide: ReorderableListSimpleSide.Right,
        // handleIcon: Icon(Icons.access_alarm),
        padding: EdgeInsets.only(top: 20.0),
        children:todoItems.map((InaboxCard item) => _buildListTile(context, item)).toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            InaboxCard item = todoItems[oldIndex];
            todoItems.remove(item);
            todoItems.insert(newIndex, item);
          });
        },
    );
   
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final InaboxCard item = todoItems.removeAt(oldIndex);
      todoItems.insert(newIndex, item);
    });
  }

  List<Widget> getList(){

      for (int i=0; i<10;i++){
          todoItems.add(InaboxCard(keyValue: i.toString(),title: "welcome",));
          
      }
      return todoItems;
   }
  
}


  

