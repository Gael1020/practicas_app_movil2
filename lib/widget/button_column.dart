import 'package:flutter/material.dart';
import 'button_section.dart';


class ButtomColumn extends StatelessWidget{

const ButtomColumn({
  Key? key,
  required this.color,
  required this.icon,
  required this.label,
}) : super(key: key);

final Color color;
final IconData icon;
final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ 
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: TextButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text("Texto predeterminado"),
                action: SnackBarAction(
                  label: "Salir",
                  onPressed: () {},
                ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color
            ),
            )
          ),
        ),
      ],
    );
  }
}

  


  