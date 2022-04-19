import 'package:get/get.dart';
import 'package:tehnokopi/domain/models/teh_dan_kopi.dart';

class CartController extends GetxController {
  var _varian = {}.obs;
  late int totalHarga;
  void addProduct(TehKopi tehKopiList) {
    if (_varian.containsKey(tehKopiList)) {
      if (_varian == tehKopiList.stock) {
        Get.snackbar('Melebihi Stock', 'Pemesanan melebihi stock',
            animationDuration: const Duration(milliseconds: 200),
            snackPosition: SnackPosition.TOP);
      } else {
        _varian[tehKopiList]++;
        totalHarga = _varian[tehKopiList] * tehKopiList.price;
      }
    } else {
      _varian[tehKopiList] = 1;
    }
  }

  get tehKopiList => _varian;
}
