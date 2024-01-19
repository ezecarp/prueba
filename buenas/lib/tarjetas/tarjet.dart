import 'package:flutter/material.dart';

class TarjetPage extends StatelessWidget {
  const TarjetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Paco con tarjeta'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYMF2N_iCIlzkqONIIql7wR7WSa9s4t9gCXhBm2xKAFLeIykMgEM-LYIEULKfJyIUqQcU&usqp=CAU'),
            ),
          const SizedBox(height: 20
          ),
           _inputNombre(),
          const SizedBox(height: 10,),
           _inputCard(),
           Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: _inputDate(),
              )
            ],
           )
          ],
        ),
      ),
    );
  }

  Container _inputNombre() {
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.grey)
          ),
          padding:const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child:const TextField(
            style:TextStyle(fontSize:20),
            decoration: InputDecoration(
              border: InputBorder.none
            ),
          ));
  }

   Container _inputCard() {
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.grey)
          ),
          padding:const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child:const TextField(
            style:TextStyle(fontSize:20),
            decoration: InputDecoration(
              border: InputBorder.none
            ),
          ));
  }

  Container _inputDate() {
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.grey)
          ),
          padding:const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child:const TextField(
            style:TextStyle(fontSize:20),
            decoration: InputDecoration(
              border: InputBorder.none
            ),
          ));
  }
}
