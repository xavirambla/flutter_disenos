import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class ScrollScreen extends StatelessWidget {
   const ScrollScreen ({Key? key}) : super(key:  key);

   @override
   Widget build (BuildContext context){  
      var boxDecoration = const BoxDecoration(
             gradient: LinearGradient(
               begin:Alignment.topCenter,
               end:Alignment.bottomCenter,
               stops:  [ 0.5 ,0.5],   // donde cambian los colores para hacer un gradiente más controlado
               colors: [
                 Color ( 0xff5EE8C5),
                 Color ( 0xff30BAD6),
               ])
           );
           
      return  Scaffold(
//        backgroundColor: const Color (0xff30BAD6) ,
         body:Container(
           decoration: boxDecoration,


           child: PageView(
             physics: const BouncingScrollPhysics(), // para que  se vaya para arriba/abajo cuando esté en el límite para que se entienda el final
             scrollDirection: Axis.vertical,
             children: [
              Page1(),
Page2(),
Page1(),            
           ],),
           
         )
      );
   }
}

class Page1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // background
        Background(),   // pinta primero este
        MainContent()   // pinta encima del primero
      ],
      );
  }
}

class MainContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom:false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox( height: 30,),
          const Text('11º' , style : textStyle),
          const Text('Miércoles' , style :  textStyle),
          Expanded(child: Container( ),),
          const Icon(Icons.keyboard_arrow_down,size: 100,color: Colors.white,),

        ],),
    );
  }
}

class Background extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,  // coja todo el espacio posible
      alignment: Alignment.topCenter,
      child: const Image ( image: AssetImage('assets/scroll-1.png'),));
  }
}


class Page2 extends StatelessWidget {

   @override
   Widget build (BuildContext context){  
     return Container(
       color: const Color(0xff30BAD6),
       height: 100,
       width: 100,
       child: TextButton(
         child: const Padding(
           padding: EdgeInsets.symmetric(horizontal: 40),
           child:  Text('Bienvenido' ,style:  TextStyle(color:Colors.white, fontSize: 30)),
         ),
         onPressed: (){},
         style: TextButton.styleFrom(
           backgroundColor: const Color(0xff0098FA),
           shape: const StadiumBorder(),
           
         ),
         
         ) ,
       );
      
   }
}