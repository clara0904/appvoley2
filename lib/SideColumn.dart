import 'package:flutter/material.dart';
import 'List.dart';

class SideColumn extends StatelessWidget {
  final bool isLeft;
  const SideColumn({super.key, required this.isLeft});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: isLeft ? Alignment.topLeft : Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, top: 8, left: 10),
            child: Icon(isLeft ? Icons.arrow_back : Icons.settings, color: Colors.white, size: 33),
          ),
        ),
      Expanded( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              List(tipoLance: 'Ace', left: isLeft,),
              List(tipoLance: 'Ataque', left: isLeft),
              List(tipoLance: 'Bloqueio', left: isLeft),
              List(tipoLance: 'Erro', left: isLeft),
            ],
          ),
        ),
      ],
    );
  }
}