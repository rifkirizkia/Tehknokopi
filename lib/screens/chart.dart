import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tehnokopi/controller/cart_controller.dart';
import 'package:tehnokopi/domain/models/teh_dan_kopi.dart';

// class CartProduct extends StatelessWidget {
//   CartProduct({Key? key}) : super(key: key);
//   final CartController controller = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 600,
//       child: ListView.builder(
//           itemCount: controller.tehKopiList.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ChartPage(
//               controller: controller,
//               product: controller.tehKopiList.keys.toList()[index],
//               quantity: controller.tehKopiList.values.toList()[index],
//               index: index,
//             );
//           }),
//     );
//   }
// }

class ChartPage extends StatelessWidget {
  const ChartPage({
    Key? key,
    // required this.controller,
    // required this.product,
    // required this.quantity,
    // required this.index,
  }) : super(key: key);
  // final CartController controller;
  // final TehKopi product;
  // final int quantity;
  // final int index;

  double getWidthBox(BuildContext context) => MediaQuery.of(context).size.width;
  double getHeightBox(BuildContext context) =>
      MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 131, 38),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 31, 131, 38),
          title: const Text('Keranjang'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Stack(
                  children: [
                    Container(
                      width: getWidthBox(context),
                      height: getHeightBox(context),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0)),
                        color: Color.fromARGB(255, 243, 243, 243),
                      ),
                    ),
                    Container(
                      width: getWidthBox(context),
                      height: getHeightBox(context),
                      margin: const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0)),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
