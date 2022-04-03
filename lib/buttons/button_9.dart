import 'package:flutter/material.dart';
import 'package:magic_cube/pages/magic_cube.dart';

class Button_9 extends StatefulWidget {
  final Data data;
  Button_9({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button_9();
  }
  
}

class _Button_9 extends State<Button_9>{

  netxNumber(){
    setState(() {
      if(widget.data.num9 == 9){
        widget.data.num9 = 1;
      }else{
        widget.data.num9++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num9.toString(),
         style: TextStyle( 
           fontWeight: FontWeight.bold,
           fontSize: 48,
           color: Colors.black),))
      ],
    );
  }
}