import 'package:Black_Note/Models/Task.dart';
import 'package:Black_Note/Models/widget/inbox_card_widget.dart';

import 'package:flutter/material.dart';
import '../../Models/global.dart';
class InaboxPage extends StatefulWidget {
 
  @override
  _InaboxPageState createState() => _InaboxPageState();
}
class _InaboxPageState extends State<InaboxPage> {  
  List<Task> taskList = [];
  @override
  Widget build(BuildContext context) {
    taskList =getList();
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
   Widget _buildListTile(BuildContext context, Task item) {
    return ListTile(
      key: Key(item.taskId),
      title: InaboxCard(title: item.title,),
    );
  }
  
  Widget _buildReorderableListSimple(BuildContext context){
    
    return ReorderableListView(
     
        // handleSide: ReorderableListSimpleSide.Right,
        // handleIcon: Icon(Icons.access_alarm),
        padding: EdgeInsets.only(top: 20.0),
        children:taskList.map((Task item) => _buildListTile(context, item)).toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            Task item = taskList[oldIndex];
            taskList.remove(item);
            taskList.insert(newIndex, item);
          });
        },
    );
   
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Task item = taskList.removeAt(oldIndex);
      taskList.insert(newIndex, item);
    });
  }

  List<Task> getList(){

      for (int i=0; i<10;i++){
          taskList.add(Task("My first todo " + i.toString(), false, i.toString() ));
          
      }
      return taskList;
   }
  
}


  

