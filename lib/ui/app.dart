import 'package:compras2023/ui/pages/carrito/add.dart';
import 'package:compras2023/ui/pages/carrito/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth/login.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestion de Estado',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const ListaArticulos(),
      routes: {
        "/auth": (context) => const login(),
        "/list": (context) => const ListaArticulos(),
        "/add": (context) => const addArticulo()
      },
    );
  }
}