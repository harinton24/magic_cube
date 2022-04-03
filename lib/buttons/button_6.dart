import 'package:flutter/material.dart';
import 'package:magic_cube/pages/magic_cube.dart';

class Button_6 extends StatefulWidget {
  final Data data;
  Button_6({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button_6();
  }
  
}

class _Button_6 extends State<Button_6>{

  netxNumber(){
    setState(() {
      if(widget.data.num6 == 9){
        widget.data.num6 = 1;
      }else{
        widget.data.num6++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num6.toString(),
         style: TextStyle( 
           fontWeight: FontWeight.bold,
           fontSize: 48,
           color: Colors.black),))
      ],
    );
  }
}