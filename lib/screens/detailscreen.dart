import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
// import 'package:get/get.dart';
import 'package:tehnokopi/domain/models/teh_dan_kopi.dart';

import '../controller/cart_controller.dart';

class DetailScreen extends StatelessWidget {
  final TehKopi varian;
  // ignore: use_key_in_widget_constructors
  const DetailScreen({required this.varian});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return DetailMobilePage(varian: varian);
    });
  }
}

class DetailMobilePage extends StatefulWidget {
  final TehKopi varian;
  // ignore: use_key_in_widget_constructors
  const DetailMobilePage({required this.varian});

  @override
  State<DetailMobilePage> createState() => _DetailMobilePageState();
}

class _DetailMobilePageState extends State<DetailMobilePage> {
  double getBox(BuildContext context) => MediaQuery.of(context).size.width;
  int order = 0;
  int totalHarga = 0;
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.network(
                      widget.varian.imageUrls,
                      height: MediaQuery.of(context).size.height * 1 / 3,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitHeight,
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back),
                              color: const Color.fromARGB(255, 31, 131, 38),
                            ),
                            const FavoriteButton()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                Stack(
                  children: [
                    Container(
                      width: getBox(context),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0)),
                        color: Color.fromARGB(255, 243, 243, 243),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        //judul produk
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0))),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: Text(
                                    widget.varian.name,
                                    style: const TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Oswald'),
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      NumberFormat.currency(
                                              locale: 'id',
                                              symbol: 'Rp ',
                                              decimalDigits: 0)
                                          .format(widget.varian.price),
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.red[400],
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    )),
                                Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.star_rounded,
                                            color: Colors.orange[600]),
                                        Text(
                                          widget.varian.rating.toString(),
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 5.0, right: 5.0),
                                          width: 1,
                                          height: 18,
                                          color: Colors.blueGrey[900],
                                        ),
                                        Text(
                                          '${widget.varian.terjual.toString()} terjual',
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    )),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 20, bottom: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (order == 0) {
                                              order == 0;
                                            } else {
                                              order--;
                                              totalHarga =
                                                  widget.varian.price * order;
                                            }
                                          });
                                        },
                                        child: Container(
                                            margin: const EdgeInsets.only(
                                                right: 30.0),
                                            padding: const EdgeInsets.all(5),
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 15, 122, 33),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: const Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            )),
                                      ),
                                      Text(
                                        '$order',
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (order == widget.varian.stock) {
                                              order == widget.varian.stock;
                                              Get.snackbar('Melebihi Stock',
                                                  'Pemesanan melebihi stock',
                                                  animationDuration:
                                                      const Duration(
                                                          milliseconds: 200),
                                                  snackPosition:
                                                      SnackPosition.TOP);
                                            } else {
                                              order++;
                                              totalHarga =
                                                  widget.varian.price * order;
                                            }
                                          });
                                        },
                                        child: Container(
                                            margin: const EdgeInsets.only(
                                                left: 30.0),
                                            padding: const EdgeInsets.all(5),
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 15, 122, 33),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //stock produk
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0))),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20.0, top: 20.0),
                                  child: Row(
                                    children: [
                                      const Expanded(
                                          flex: 1,
                                          child: Text('Stok',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight:
                                                      FontWeight.w800))),
                                      Expanded(
                                        flex: 3,
                                        child: Text(
                                          widget.varian.stock.toString(),
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20.0, top: 10.0),
                                  child: Row(
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Text('Garansi',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w800)),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Text(
                                          widget.varian.garansi,
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20.0, top: 10.0, bottom: 20.0),
                                  child: Row(
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Text('Lokasi Toko',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w800)),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Text(
                                          widget.varian.place,
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20.0, top: 20.0, bottom: 20.0),
                                  child: const Text(
                                    'Deskripsi Produk',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(20.0),
                                  margin: const EdgeInsets.only(bottom: 50.0),
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 15, 122, 33),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Text(
                                    widget.varian.description,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 16.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1 / 10,
              decoration: const BoxDecoration(
                  color: Color(0xff533D42),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Total Harga',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 240, 240, 240)),
                          ),
                          Text(
                            NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'Rp ',
                                    decimalDigits: 0)
                                .format(widget.varian.price * order),
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '$order produk',
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 240, 240, 240)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white,
                            fixedSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 15, 122, 33),
                                    style: BorderStyle.solid,
                                    width: 1)),
                          ),
                          onPressed: () {
                            if (order == 0) {
                              Get.snackbar(
                                'Maaf',
                                'Pemesanan Anda masih 0',
                                animationDuration:
                                    const Duration(milliseconds: 200),
                                icon: const Icon(Icons.priority_high_rounded),
                                snackPosition: SnackPosition.TOP,
                              );
                            } else {
                              Get.snackbar('Produk Dimasukan ke Keranjang',
                                  'Terimakasih Telah Memilih Produk Kami',
                                  animationDuration:
                                      const Duration(milliseconds: 200),
                                  snackPosition: SnackPosition.TOP,
                                  icon: const Icon(Icons.check_circle));
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.add_outlined,
                                color: Color.fromARGB(255, 15, 122, 33),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Keranjang',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 15, 122, 33),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: const Color.fromARGB(255, 15, 122, 33),
                            fixedSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {
                            if (order == 0) {
                              Get.snackbar(
                                'Maaf',
                                'Pemesanan Anda masih 0',
                                animationDuration:
                                    const Duration(milliseconds: 200),
                                icon: const Icon(Icons.priority_high_rounded),
                                snackPosition: SnackPosition.TOP,
                              );
                            }
                          },
                          child: const Text(
                            'Beli Sekarang',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);
  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

class CartButton extends StatefulWidget {
  const CartButton({Key? key}) : super(key: key);
  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  bool isCart = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isCart ? Icons.shopping_cart : Icons.add_shopping_cart_rounded,
        color: isCart ? Colors.blueAccent : Colors.grey,
      ),
      onPressed: () {},
    );
  }
}
