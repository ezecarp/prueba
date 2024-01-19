// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_2/drawer/draver.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(context),
    );
  }
}

Widget cuerpo(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/login.png'),
                    fit: BoxFit.cover)),
            child: Center(
              child: Column(
                children: [
                  nombre(),
                  campoUsuario(),
                  campoContraasena(),
                  botonEntrar(context)
                ],
              ),
            )),
      ],
    ),
  );
}

Widget nombre() {
  return const Padding(
    padding: EdgeInsets.only(top: 450),
    child: Text(
      'Inisiar sesión',
      style: TextStyle(
          color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
    ),
  );
}

Widget campoUsuario() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 50),
    child: TextField(
      decoration: InputDecoration(
          hintText: 'Nombre de usuario',
          fillColor: Colors.white70,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    ),
  );
}

Widget campoContraasena() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50),
    padding: const EdgeInsets.only(top: 10),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contaseña',
          fillColor: Colors.white70,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    ),
  );
}

Widget botonEntrar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
        ),
        onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DraverPageRoute()))
            },
        child: const Text('Iniciar sesion')),
  );
}
