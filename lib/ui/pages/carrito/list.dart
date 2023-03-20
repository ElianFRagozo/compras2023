import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../domain/models/controller/gestionarticulo.dart';


class ListaArticulos extends StatefulWidget {
  const ListaArticulos({super.key});

  @override
  State<ListaArticulos> createState() => _ListaArticulosState();
}

class _ListaArticulosState extends State<ListaArticulos> {
  ComprasController controlc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Articulos"),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: controlc.listaFinal.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 30,
              height: 30,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      controlc.listaFinal[index].detalle,
                      style: TextStyle(fontSize: 10.0,),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.network(controlc.listaFinal[index].foto),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Código: ${controlc.listaFinal[index].codigo}",
                    style: TextStyle(fontSize: 8.0),
                  ),
                  Text(
                    "Existencias: ${controlc.listaFinal[index].existencias}",
                    style: TextStyle(fontSize: 8.0),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Valor: \$${controlc.listaFinal[index].vrUnitario}",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
