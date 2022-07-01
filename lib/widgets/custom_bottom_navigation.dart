import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    /*
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: 200,
      
    );
    */
    return BottomNavigationBar(
      showSelectedLabels: false,   // cuando esta seleccionado ya no aparece el label
      showUnselectedLabels: false,  // ya no aparece ningún label
      currentIndex: 1,   // qué elemento del items está seleccionado
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55,57,84,1),
      unselectedItemColor: Color.fromRGBO(116,117,152,1),  // lo usan para hacer cierta transparencia
      items: [
        BottomNavigationBarItem(
          
          icon: Icon (Icons.calendar_today_outlined, size:25),
          label: 'Calendario',

          ),
        BottomNavigationBarItem(
          icon: Icon (Icons.pie_chart_outline_outlined, size:25),
          label: 'Gráfica',          
          ),
        BottomNavigationBarItem(
          icon: Icon (Icons.supervised_user_circle_outlined, size:25),
          label: 'Usuarios',          
          ),
      ],
      );
  }
}