import 'package:flutter/material.dart';
import 'package:magic_cube/pages/magic_cube.dart';

class Button_4 extends StatefulWidget {
  final Data data;
  Button_4({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button_4();
  }
  
}

class _Button_4 extends State<Button_4>{

  netxNumber(){
    setState(() {
      if(widget.data.num4 == 9){
        widget.data.num4 = 1;
      }else{
        widget.data.num4++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num4.toString(),
         style: TextStyle( 
           fontWeight: FontWeight.bold,
           fontSize: 48,
           color: Colors.black),))
      ],
    );
  }
}