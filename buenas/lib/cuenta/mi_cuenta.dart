import 'package:flutter/material.dart';
import 'package:flutter_application_2/Login/Login.dart';
import 'package:flutter_application_2/cuenta/ajustes.dart';
import 'package:flutter_application_2/cuenta/mi_perfil.dart';

class MiCuenta extends StatelessWidget {
  const MiCuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
              ],
            ),
            SizedBox(
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4byPXxobodoHX97JFwjnWfBJ-UVX6pCeEwg&usqp=CAU'),
            ),
            const Divider(),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MiPerfil()));
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.person),
                      Text(
                        ' Mi Perfil',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const AjustesPage()));
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.settings),
                        Text(' Ajustes', style: TextStyle(color: Colors.black)),
                      ],
                    )),
              ),
            ),
            SizedBox(
              width: 250,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.swap_vert_circle_rounded),
                      Text(' Búsquedas guardadas',
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(Icons.support_agent),
                        Text(' Ayuda', style: TextStyle(color: Colors.black)),
                      ],
                    )),
              ),
            ),
            const Divider(),
            SizedBox(
              width: 200,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.exit_to_app),
                        Text(' Cerrar sesion',
                            style: TextStyle(color: Colors.black)),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
