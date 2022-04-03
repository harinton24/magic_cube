import 'package:flutter/material.dart';
import 'package:magic_cube/buttons/button_1.dart';
import 'package:magic_cube/buttons/button_2.dart';
import 'package:magic_cube/buttons/button_3.dart';
import 'package:magic_cube/buttons/button_4.dart';
import 'package:magic_cube/buttons/button_5.dart';
import 'package:magic_cube/buttons/button_6.dart';
import 'package:magic_cube/buttons/button_7.dart';
import 'package:magic_cube/buttons/button_8.dart';
import 'package:magic_cube/buttons/button_9.dart';

import '../main.dart';

class Magic_Cube extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _Magic_Cube();
  }

}


class _Magic_Cube extends State<Magic_Cube> {

   final data = Data(num1: 1, num2: 1, num3: 1, 
                    num4: 1, num5: 1, num6: 1, 
                    num7: 1, num8: 1, num9: 1);

  int horizontal_1 = 0;
  int horizontal_2 = 0;
  int horizontal_3 = 0;
  int vertical_1 = 0;
  int vertical_2 = 0;
  int vertical_3 = 0;
  int diagonal_1 = 0;
  int diagonal_2 = 0;

  String answer1 = "";
  String answer2 = "";

 matrix(){
    setState(() {
      horizontal_1 = data.num1 + data.num2 + data.num3;
      horizontal_2 = data.num4 + data.num5 + data.num6;
      horizontal_3 = data.num7 + data.num8 + data.num9;
      vertical_1 = data.num1 + data.num4 + data.num7;
      vertical_2 = data.num2 + data.num5 + data.num8;
      vertical_3 = data.num3 + data.num6 + data.num9;
      diagonal_1 = data.num1 + data.num5 + data.num9;
      diagonal_2 = data.num7 + data.num5 + data.num3;
    });
  }

  validate(){
  matrix();
    setState(() {
            if(data.num1 != data.num2 && data.num1 != data.num3 && data.num1 != data.num4 && data.num1 != data.num5 &&
          data.num1 != data.num6 && data.num1 != data.num7 && data.num1 != data.num8 && data.num1 != data.num9){

             if(horizontal_1 == 15 && horizontal_2 == 15 && horizontal_3 == 15 && vertical_1 == 15 && vertical_2 == 15 && vertical_3 == 15 && diagonal_1 == 15 ){

                 answer1 = "Si   Es";
                 answer2="";

          }else{answer1 = "";

                answer2="No es";}

        }else{answer1 = "";
        
              answer2="No es";}
    });
  }
  

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(MyApp.name),
        ),
        body: buildGridView(),
        
      );

    
  Widget buildGridView() => GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      
        padding: EdgeInsets.all(4),
        
        children:[
   
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius:BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button_1(data: data)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[100],
              borderRadius:BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button_2(data: data)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius:BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button_3(data: data)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[100],
              borderRadius:BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button_4(data: data)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius:BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button_5(data: data)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[100],
              borderRadius:BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Button_6(data: data)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius:BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button_7(data: data)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[100],
              borderRadius:BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button_8(data: data)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius:BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button_9(data: data)
              ],
            ),
          ),

         ElevatedButton(style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),onPressed: (){validate();}, 
         child:
          Text('Validar',
           style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white
                  ),)),

         Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius:BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  this.answer1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
               Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius:BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  this.answer2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
              ],
            ),
          ),

           Image.network(
          'https://i.pinimg.com/originals/11/e9/03/11e9038965932e27306b6c8ef16bd574.gif',
        ),

        ],

      
      );


    
}

class Data {
  int num1;
  int num2;
  int num3;
  int num4;
  int num5;
  int num6;
  int num7;
  int num8;
  int num9;

  Data({required this.num1, required this.num2, required this.num3,
        required this.num4, required this.num5, required this.num6,
        required this.num7, required this.num8, required this.num9,});
}
