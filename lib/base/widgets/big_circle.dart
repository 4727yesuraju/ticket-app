import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;
  const BigCircle({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                     height : 13,
                     width : 6.5,
                     child : DecoratedBox(
                      decoration: BoxDecoration(
                         color : Colors.white,
                         borderRadius : isRight==true ? const BorderRadius.only(
                           topLeft: Radius.circular(6.5),
                           bottomLeft : Radius.circular(6.5)
                         ) : const BorderRadius.only(
                           topRight: Radius.circular(6.5),
                           bottomRight : Radius.circular(6.5)
                         )
                      )
                    )
    );
  }
}