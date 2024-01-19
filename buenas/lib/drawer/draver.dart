import 'package:flutter/material.dart';
import 'package:flutter_application_2/cuenta/mi_cuenta.dart';
import 'package:flutter_application_2/pages/home_page.dart';

class DraverPageRoute extends StatelessWidget {
  const DraverPageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  width: 250,
                  height: 200,
                  child: Image.asset('assets/image/drawer.png'),
                ),
                const Text(
                  ' Menu ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                          onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DraverPageRoute()))
                              },
                          child: const Row(
                            children: [
                              Icon(Icons.home),
                              Text('Inicio'),
                            ],
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      width: 300,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(Icons.search),
                              Text('Buscar'),
                            ],
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Icon(Icons.shopify_sharp),
                                Text('Mis Compras'),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.favorite_border),
                                    Text('Favoritos'),
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Icon(Icons.local_offer_sharp),
                                Text('Ofertas'),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Icon(Icons.screen_search_desktop_outlined),
                                Text('Historial'),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MiCuenta()))
                                },
                            child: const Row(
                              children: [
                                Icon(Icons.settings_suggest_sharp),
                                Text('Mi Cuenta'),
                              ],
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text('Draver'),
              ],
            ),
            shadowColor: Colors.black,
          ),
          body: const HomePage()),
    );
  }
}
