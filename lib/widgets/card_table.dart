import 'dart:ui';

import 'package:flutter/material.dart';


/*
El blur es muy psado, mejor no ponerlo sino hace falta
*/
class CardTable extends StatefulWidget {
  CardTable({Key? key}) : super(key: key);

  @override
  State<CardTable> createState() => _CardTableState();
}

class _CardTableState extends State<CardTable> {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
           _SingleCard( color: Colors.blue, icon: Icons.border_all, text:'General'),
           _SingleCard( color: Colors.pinkAccent, icon: Icons.car_rental, text:'Transport'),

          ]
          ),
        TableRow(
          children: [
           _SingleCard( color: Colors.red, icon: Icons.shop, text:'Shopping'),
           _SingleCard( color: Colors.green, icon: Icons.cloud, text:'Bill'),

          ]
          ),
        TableRow(
          children: [
           _SingleCard( color: Colors.deepPurple, icon: Icons.movie, text:'Entertainment'),
           _SingleCard( color: Colors.yellow, icon: Icons.food_bank, text:'Grocery'),

          ]
          ),
        TableRow(
          children: [
           _SingleCard( color: Colors.orange, icon: Icons.border_all, text:'General'),
           _SingleCard( color: Colors.pinkAccent, icon: Icons.car_rental, text:'Transport'),

          ]
          ),
      ],

      );
  }
}


class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  _SingleCard({
    Key? key, 
    required this.icon, 
    required this.color, 
    required this.text
    }) : super(key: key);


  Widget build(BuildContext context) {
    var column = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon( this.icon, size:35, color: Colors.white,),
                  radius: 30,
                ),
                SizedBox(height:10),
                Text( this.text ,style: TextStyle( color: this.color , fontSize: 18))
              ],);

    return _CardBackground(
      child: column
      );
  }
}


//configura los widgets internos de la tarjeta
class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({ 
    Key? key, 
    required this.child
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.all(15),   // lo quitamos del containter interior para ponero a fuera y así  quedea más fino.
      child: ClipRRect(   // se hace para que los widgets internos no ocupen más espacio que el asignado
        borderRadius: BorderRadius.circular(20),  // mismo que el container interior.
        child: BackdropFilter(  // es ppara hacer un blur   ( )
          
          filter: ImageFilter.blur( sigmaX: 5 , sigmaY:5),
          
          child: Container(
    //          margin: EdgeInsets.all(15),
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7 ),
              borderRadius: BorderRadius.circular(20)
            ),
            child: this.child
          ),
        ),
      ),
    );
  }
}