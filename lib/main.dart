
import 'package:flutter/material.dart';
import 'Models/global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Black Note',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
    
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Black Note App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {  
  @override
  Widget build(BuildContext context) {

    var children2 = <Widget>[
                     TabBarView(

                  children: [
                    
                    new Container(
                      color: darkGreyColor,
                    ),
                    new Container(color: Colors.orange,),
                    new Container(
                      color: Colors.lightGreen,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 160,
                
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft : Radius.circular(50), bottomRight: Radius.circular(50)),
                    color: Colors.white,

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    <Widget>[
                      
                      Text("In a box", style: inboxTitleStyle,),
                      Container()
                    ],

                   )

                ),

                Container(
                 
                    margin: EdgeInsets.only(top: 100, left: MediaQuery.of(context).size.width*0.5-27),
                    child: FloatingActionButton(
                      child: Container(
                        child: Icon(Icons.add, ),
                        

                      ),
                    
                    backgroundColor: darkGreyColor,
                    onPressed: (){
                      
                    },
                  ),
                )
              
               ];
    return MaterialApp(
         
        color: Colors.yellow,
        home: SafeArea(
                  child: DefaultTabController(
            length: 3,
            child: new Scaffold(
              body: Stack(
                  children:children2
              ),
              
              appBar: AppBar(
                elevation: 0,
              title: new TabBar(
                tabs: [
                  Tab(
                    icon: new Icon(Icons.home),
                  ),
                  Tab(
                    icon: new Icon(Icons.rss_feed),
                  ),
                  Tab(
                    icon: new Icon(Icons.perm_identity),
                  ),
                  
                ],
                labelColor: darkGreyColor,
                unselectedLabelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor:Colors.transparent ,

                
              ),
              backgroundColor: Colors.white,
              ),
              backgroundColor: Colors.black,
            ),
          ),
        ),
      
    );
  }
}
