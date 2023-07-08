import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Button Design",
            style: Theme.of(context).textTheme.bodyMedium
          ),
''
        ),
        body: Center(
          child: InkWell(
            onTap: null,
          
          child: Container(
           
            width: 150.0,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                offset: Offset(0.0, 20.0),
                blurRadius: 30.0,
                 color: Colors.black12,)
             ], color: Colors.white, borderRadius: BorderRadius.circular(22.0)),
             child: InkWell(onTap: () {
              print("Garima Is ");
             },
               child: Row(
                children: <Widget>[
                  Container(
             
                    height: 50.0,
                    width: 110.0,
                    decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(95.0),
                        topLeft: Radius.circular(95.0),
                        bottomRight: Radius.circular(200.0) )),
             
             
                  
                    padding: 
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                      child: Text(
                      'Button',
                      style: Theme.of(context)
                       .textTheme
                       .labelMedium!
                       .copyWith(color: Colors.black),
                       ),
               ),
                 Icon(
                    Icons.home,
                    size:30.0,
                  )
                ]   
               ),
             ),


          ),

         ),
        ),
    ));
    
  }
}