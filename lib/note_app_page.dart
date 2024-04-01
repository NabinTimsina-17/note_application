import 'dart:developer';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NoteAppPage extends StatefulWidget {
   const NoteAppPage({super.key});

  @override
  State<NoteAppPage> createState() => _NoteAppPageState();
}

class _NoteAppPageState extends State<NoteAppPage> {
  TextEditingController noteController =TextEditingController();
final notes = ["ab", "cd", "ef", "gh", "ij"];

// Widget listFunction(){

//          for(int i=0; i<notes.length;i++){
//     return ListTile(
//             title: Text(notes.last),
//           );
// }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text("Add your note here"),
      ),
      body: ListView.builder(itemCount: notes.length, itemBuilder: (context,index){
        return ListTile(
          title: Text(notes.elementAt(index)),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: () {

      showModalBottomSheet(context: context, builder:(BuildContext context){
 
        return Container(
          height: 500,
          width: 500,
          color: const Color.fromRGBO(15, 68, 88, 98),
          
          child:  Column(
            children: [
               TextField(controller: noteController,),
              ElevatedButton(
                onPressed: () {
                  log(noteController.text);
                 // log(noteController.notes);

                 notes.add(noteController.text);
                 Navigator.pop(context);
                  setState(() {
                    
                  });
                },
                
                child:const Text("Submit")),
            ],
          ));

      } );
        
      },
      child: const Icon(Icons.plus_one_outlined)
      ),
    );
  }
}