import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}):super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  final _textController = TextEditingController();

  String userPost ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Center(
            child:Text('Android Assignment 1'),
          ),
          backgroundColor: Colors.blue,
        ),
        //backgroundColor: Colors.lightBlueAccent,
        body: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 300.0),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child:Container(
                    child: Center(
                      child: Text('Hello..'+ userPost,style: TextStyle(fontSize: 30.0)),
                    ),
                  ),
                ),
                TextField(
                  controller:_textController,
                  decoration: InputDecoration(
                      hintText:'What is your name?',
                      border:const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed:(){
                          _textController.clear();
                        },
                        icon: const Icon(Icons.clear),
                      )
                  ),
                ),
                MaterialButton(
                  onPressed: (){
                    setState((){
                      userPost = _textController.text;
                    });
                  },
                  color: Colors.blue,
                  child: const Text('OK',style: TextStyle(color: Colors.black)),
                )
              ],
            )
        )
    );
  }
}