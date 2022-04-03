import 'package:flutter/material.dart';
import 'package:magic_cube/pages/magic_cube.dart';

class Button_7 extends StatefulWidget {
  final Data data;
  Button_7({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button_7();
  }
  
}

class _Button_7 extends State<Button_7>{

  netxNumber(){
    setState(() {
      if(widget.data.num7 == 9){
        widget.data.num7 = 1;
      }else{
        widget.data.num7++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num7.toString(),
         style: TextStyle( 
           fontWeight: FontWeight.bold,
           fontSize: 48,
           color: Colors.black),))
      ],
    );
  }
}