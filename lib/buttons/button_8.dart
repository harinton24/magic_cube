import 'package:flutter/material.dart';
import 'package:magic_cube/pages/magic_cube.dart';

class Button_8 extends StatefulWidget {
  final Data data;
  Button_8({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button_8();
  }
  
}

class _Button_8 extends State<Button_8>{

  netxNumber(){
    setState(() {
      if(widget.data.num8 == 9){
        widget.data.num8 = 1;
      }else{
        widget.data.num8++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num8.toString(),
         style: TextStyle( 
           fontWeight: FontWeight.bold,
           fontSize: 48,
           color: Colors.black),))
      ],
    );
  }
}