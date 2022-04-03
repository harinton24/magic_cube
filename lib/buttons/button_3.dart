import 'package:flutter/material.dart';
import 'package:magic_cube/pages/magic_cube.dart';

class Button_3 extends StatefulWidget {
  final Data data;
  Button_3({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button_3();
  }
  
}

class _Button_3 extends State<Button_3>{

  netxNumber(){
    setState(() {
      if(widget.data.num3 == 9){
        widget.data.num3 = 1;
      }else{
        widget.data.num3++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num3.toString(),
         style: TextStyle( 
           fontWeight: FontWeight.bold,
           fontSize: 48,
           color: Colors.black),))
      ],
    );
  }
}