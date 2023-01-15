import 'package:flutter/material.dart';
import 'package:myfirst_layouts/main.dart';
import 'button_column.dart';


class ButtomSection extends StatelessWidget{

const ButtomSection({super.key});

@override
Widget build(BuildContext context)
{
Color color = Theme.of(context).primaryColor;

return Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    ButtomColumn(icon: Icons.call, label: 'CALL', color: color,),
    ButtomColumn(icon: Icons.near_me, label: 'ROUTE', color: color,),
    ButtomColumn(icon: Icons.share, label: 'SHARE', color: color,),
  ],
); 
}
}




