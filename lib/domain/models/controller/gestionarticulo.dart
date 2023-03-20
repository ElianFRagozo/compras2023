import 'package:compras2023/domain/models/articulo.dart';
import 'package:get/get.dart';

class ComprasController extends GetxController{
  Rx<List<Articulo>> listaGrat=Rx<List<Articulo>>([]);
    @override
  void onInit() {
    // TODO: implement onInit
    listaGrat.value= listaOriginal;
    super.onInit();
  }
  List<Articulo> get listaFinal => listaGrat.value;
}