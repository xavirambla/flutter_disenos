
// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   const BasicDesignScreen ({Key? key}) : super(key:  key);

   @override
   Widget build (BuildContext context){  
      return  Scaffold(
         body: Column(
           children: [
             //imagen
             const Image(image: AssetImage('assets/landscape.jpg')),

             //title Widget
             const Title(),
             //Button Section
             const ButtonSection(),
             //Description
             Container(
               margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
               child: const Text('Lorem incididunt aliqua enim enim voluptate consectetur tempor fdsa fdsf dsf dsfs dddddddddddddddddew  dfda.'))
             


           ],
         )
      );
   }
}



class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:30, vertical: 10),
      child: Row(
        
        children: [
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: const [
              Text('Oeschin Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg , Switzerland', style: TextStyle(color: Colors.black45),),

          ],
          ),
//          Expanded(child:Container( color: Colors.red , height:10)),   // se expande todo lo que puede
          Expanded(child:Container( )),   // se expande todo lo que puede
          const Icon (Icons.star, color:Colors.red),
          const Text('41'),

        ],
        ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child:   Row( 
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
           CustomButton( icon:Icons.call , text:'Call'),
          CustomButton( icon:Icons.map , text:'Route'),
           CustomButton( icon: Icons.share , text:'Share'),
        ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
       Icon (this.icon, color:Colors.blue ,size: 30, ),
       Text( this.text , style: const TextStyle(color: Colors.blue )  ),

    ],);
  }
}