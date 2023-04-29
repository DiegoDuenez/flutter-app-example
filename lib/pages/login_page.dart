import 'package:flutter/material.dart';
import 'package:hello_flutter/components/square_tile.dart';

import '../components/button_component.dart';
import '../components/input_component.dart';


class LoginPage extends StatelessWidget {

  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void iniciarSesion() {

  }

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        backgroundColor: Colors.grey[300],
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),

                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),

                  const SizedBox(height: 50),

                  Text(
                      'Bienvenido, inicia sesión',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16
                      ),

                  ),

                  const SizedBox(height: 25),

                  InputComponent(
                    controller: usernameController,
                    hintText: 'Usuario',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  InputComponent(
                    controller: passwordController,
                    hintText: 'Contraseña',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  ButtonComponent(onTap: iniciarSesion),

                  const SizedBox(height: 50),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400]
                          )
                        ),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('Continuar con'),
                        ),

                        Expanded(
                            child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400]
                            )
                        ),

                      ]
                    ),
                  ),

                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SquareTileComponent(icon: Icon(Icons.facebook, size: 70,))
                    ],
                  ),

                  const SizedBox(height: 50),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  const [
                      Text('¿No tienes una cuenta?'),
                      SizedBox(width: 4),
                      Text('Registrate ahora', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))
                    ],
                  ),


                ]
            ),
          ),
        )
      );
  }

}