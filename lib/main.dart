import 'package:compras2023/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'domain/models/controller/gestionarticulo.dart';

void main(){
  Get.put(ComprasController());
  runApp(const App());
}