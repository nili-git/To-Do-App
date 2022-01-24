import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "TO DO APP",
    home: TODOAPP(),
  ));
}

class TODOAPP extends StatefulWidget {
  @override
  _TODOAPPState createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  String value;
  var listTODO =[''];
  addTODO(String item){
    setState(() {
      listTODO.add(item);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text("TO DO APP"),
        centerTitle: true,
      ),
      //Button
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: (){addTODO(value);} ),
          /*//List
          body: ListView.builder( itemCount: listTODO.length, itemBuilder: (context, index)
          {
            return ListTile(
              leading: Icon(Icons.work),
              title: Text('${listTODO[index]}', style: TextStyle(fontWeight: FontWeight.bold),),
            );
          }) */
          /*
       body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(),
          ),
          ListTile(
            title: Text("Get Up"),
            leading: Icon(Icons.info),
          ),
          ListTile(
            title: Text("Code"),
            leading: Icon(Icons.info),
          ),
          ListTile(
            title: Text("Sleep"),
            leading: Icon(Icons.info),
          ),
        ],
      ),*/
      body: ListView.builder( itemCount: listTODO.length, itemBuilder: (context, index)
          {
            return index==0? Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: " Add Item"
                ),
                onChanged: (val){
                  value= val;
                }
                 
              ),
            ): ListTile(
              leading: Icon(Icons.work),
              title: Text('${listTODO[index]}', style: TextStyle(fontWeight: FontWeight.bold),),
          );
          })
    

    );
  }
}
