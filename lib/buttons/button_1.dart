import 'package:flutter/material.dart';
import 'package:magic_cube/pages/magic_cube.dart';

class Button_1 extends StatefulWidget {
  final Data data;
  Button_1({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button_1();
  }
  
}

class _Button_1 extends State<Button_1>{

  netxNumber(){
    setState(() {
      if(widget.data.num1 == 9){
        widget.data.num1 = 1;
      }else{
        widget.data.num1++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num1.toString(),
         style: TextStyle( 
           fontWeight: FontWeight.bold,
           fontSize: 48,
           color: Colors.black),))
      ],
    );
  }
}