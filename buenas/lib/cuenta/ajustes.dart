import 'package:flutter/material.dart';

class AjustesPage extends StatefulWidget {
  const AjustesPage({super.key});

  @override
  State<AjustesPage> createState() => _AjustesPageState();
}

class _AjustesPageState extends State<AjustesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon:const Icon(Icons.arrow_back_sharp))
            ],
          ),
          SizedBox(
            child: Image.network('https://cmsresources.elempleo.com/co/assets/backend/2023-05/latam%20%281%29.jpg'),
          ),
          const Divider(),
          SizedBox(
            child: ElevatedButton(onPressed: (){}, child:const Text(' Elige el pais que quires operar la App')),
          ),
          const Divider(),
          SizedBox(
            child: ElevatedButton(onPressed: (){}, child:const Text(' Borrar historial')),
          )
        ],
      ),
    );
  }
}
