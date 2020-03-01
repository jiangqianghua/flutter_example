import 'package:flutter/material.dart';
import 'custome_router.dart';
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('FirstPage', style: TextStyle(fontSize: 36.0)),
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            // Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
            //     return SencodPage();
            // }));
              Navigator.of(context).push(CustomeRoute(SencodPage()));
          },
        ),
      ),
    );
  }
}

class  SencodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('SencodPage', style: TextStyle(fontSize: 36.0)),
        backgroundColor: Colors.pinkAccent,
        leading: Container(), // 让字体显示在中间
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}