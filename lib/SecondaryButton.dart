import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Ação ao clicar
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff2B4A8E),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Colors.white,
            width: 2,
          )
              
        ),
      ),
      child: const Text(
        'Placar Geral',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontFamily: 'ConcertOne',
        ),
      ),
    );
  }
}