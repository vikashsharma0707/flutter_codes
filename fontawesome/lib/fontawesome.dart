



import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class fontawesome extends StatelessWidget{
  const fontawesome({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Wrap(
        spacing: 20,

        children: [
          FaIcon(FontAwesomeIcons.mobile,
           size:30,
           color: Colors.red,
           ),

            FaIcon(FontAwesomeIcons.twitter,
           size:30,
           color: Colors.red,
           ),

            FaIcon(FontAwesomeIcons.github,
           size:30,
           color: Colors.red,
           ),

            FaIcon(FontAwesomeIcons.linkedin,
           size:30,
           color: Colors.red,
           ),
          

        ],
      ),
    );
  }
}