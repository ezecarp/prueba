import 'package:flutter/material.dart';

class MiPerfil extends StatefulWidget {
  const MiPerfil({super.key});

  @override
  State<MiPerfil> createState() => _MiPerfilState();
}

class _MiPerfilState extends State<MiPerfil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          color: Colors.white70,
          
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_sharp
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYExW0XUZHzfv3qzuKa83N7Pe39dvpcViXK5dBZJ6v4MOFPeqksBkdmW2WU-9TFR_2S3Q&usqp=CAU',
                )),
                SizedBox(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.document_scanner_outlined,
                          ),
                          Text(
                            ' Informacion Personal',
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.photo_camera_front_rounded),
                            Text(' Datos de tu Cuenta'),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.security),
                            Text(' Seguridad'),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.add_card_sharp),
                            Text(' Tarjetas'),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.location_pin),
                            Text(' Dirección'),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.privacy_tip),
                            Text(' Pivacidad'),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.message_rounded),
                            Text(' Comunicaciones'),
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
