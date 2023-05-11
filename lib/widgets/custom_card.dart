import 'package:my_app_lsb/theme/appTheme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imagenUrl;
  final String name;
  final Widget pantalla;

  const CustomCard(
      {super.key,
      required this.imagenUrl,
      required this.name,
      required this.pantalla});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.lightBlue,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => pantalla),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.lightBlue, width: 6),
              color: Colors.lightBlue,
            ),
            child: Column(
              children: [
                Image.asset(
                  imagenUrl,
                  width: 220,
                  height: 200,
                  fit: BoxFit.scaleDown,
                ),
                Container(
                  color: Colors.lightBlue,
                  padding: EdgeInsets.all(10.0),
                  child: Text(name,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.lightBlue,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
        ));
  }
}
