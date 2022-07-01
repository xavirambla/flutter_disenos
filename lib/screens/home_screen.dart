import 'package:flutter/material.dart';
import 'package:disenos/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen ({Key? key}) : super(key:  key);

   @override
   Widget build (BuildContext context){  
      return  Scaffold(
         body: Stack( 
           children: [
             Background(),
             _HomeBody()
             //backGround
           ],),
           bottomNavigationBar: CustomBottomNavigation(),   //la navegación de abajo
      );
   }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child:  Column(
        children: [
          //Títulos
           PageTitle(),

           //card table
            CardTable(),

        ],)
       ,);
  }
}