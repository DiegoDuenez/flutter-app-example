import 'package:flutter/material.dart';


class ButtonComponent extends StatelessWidget {

  final Function()? onTap;

  const ButtonComponent({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5)
        ),
        child: const Center(
            child: Text(
                "Iniciar Sesion",
                style: TextStyle(color: Colors.white)
            )
        )

      ),
    );

  }
}