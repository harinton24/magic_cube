import 'package:flutter/material.dart';
import 'package:magic_cube/pages/magic_cube.dart';

class Button_2 extends StatefulWidget {
  final Data data;
  Button_2({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button_2();
  }
  
}

class _Button_2 extends State<Button_2>{

  netxNumber(){
    setState(() {
      if(widget.data.num2 == 9){
        widget.data.num2 = 1;
      }else{
        widget.data.num2++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num2.toString(),
         style: TextStyle( 
           fontWeight: FontWeight.bold,
           fontSize: 48,
           color: Colors.black),))
      ],
    );
  }
}