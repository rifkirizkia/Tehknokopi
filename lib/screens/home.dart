import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tehnokopi/screens/detailscreen.dart';
import 'package:tehnokopi/domain/models/teh_dan_kopi.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return const TehKopiGrid(gridCount: 2);
        } else if (constraints.maxWidth <= 1200) {
          return const TehKopiGrid(gridCount: 4);
        } else {
          return const TehKopiGrid(gridCount: 6);
        }
      }),
    );
  }
}

class TehKopiGrid extends StatefulWidget {
  final int gridCount;
  // ignore: use_key_in_widget_constructors
  const TehKopiGrid({required this.gridCount});

  @override
  State<TehKopiGrid> createState() => _TehKopiGridState();
}

class _TehKopiGridState extends State<TehKopiGrid> {
  //filter produk
  static List<TehKopi> filteredProduct = [];
  initOrResetProduct() {
    filteredProduct.addAll(tehKopiList);
    setState(() {});
  }

  filterProductTeh(String category) {
    activeFilter = category;
    filteredProduct.clear();
    filteredProduct = tehKopiList
        .where((element) => element.category.toLowerCase().contains("teh"))
        .toList();
    setState(() {});
  }

  filterProductKopi(String category) {
    activeFilter = category;
    filteredProduct.clear();
    filteredProduct = tehKopiList
        .where((element) => element.category.toLowerCase().contains("kopi"))
        .toList();
    setState(() {});
  }

  filterRekomendasi(double rating) {
    activeFilter = rating as String;
    filteredProduct.clear();
    filteredProduct = tehKopiList
        .where(
            (element) => element.rating.toString().contains('${rating > 4.0}'))
        .toList();
    setState(() {});
  }

  String activeFilter = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // filterRekomendasi(4.0); belum bisa
    initOrResetProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:
            //field search
            TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search), //icon diluar TextField
            fillColor: Colors.white,
            filled:
                true, //jika memakai prefix/suffix maka tidak boleh menggunakan prefix/suffix text dan prefix/suffix style
            labelText:
                "Cari teh dan kopi kesukaan mu...", //text diluar TextField
            labelStyle: const TextStyle(color: Colors.grey),
            hintText: "Search Here...",
            hintStyle: const TextStyle(fontSize: 12),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        actions: <Widget>[
          //icon notifikasi
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifikasi',
            onPressed: () {},
          ), //IconButton
          //icon favorit
          IconButton(
            icon: const Icon(Icons.favorite),
            tooltip: 'Favorit',
            onPressed: () {},
          ), //IconButton
          //icon chat
          IconButton(
            icon: const Icon(Icons.chat),
            tooltip: 'Percakapan',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.lightGreen,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1 / 28,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100)),
                color: Colors.lightGreen,
              ),
            ),
            //gambar kebun
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 1 / 6,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(24.0),
                decoration: const BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      "https://th.bing.com/th/id/R.b0986ef85f72ec1320592ed53fbaf5b3?rik=AyANQZX3oCC4Cw&riu=http%3a%2f%2f1.bp.blogspot.com%2f-eOzJnA4-wC4%2fU2NAVX9tZPI%2fAAAAAAAADrs%2fAQXjC0Uz7wA%2fs1600%2fKebun-Teh-Kayu-Aro.jpg&ehk=7Fb8sJdtpJ1gwKs3p9n7Lvf1B633h%2fKKRoYwp65JE2Y%3d&risl=&pid=ImgRaw&r=0",
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Text(
                'Pilih Kategori',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            //pilih kategori
            Container(
              color: const Color.fromARGB(255, 243, 243, 243),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      //semua produk
                      InkWell(
                        onTap: () {
                          initOrResetProduct();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              )),
                          height: MediaQuery.of(context).size.height * 1 / 6,
                          width: 300,
                          child: Row(
                            children: [
                              Image.asset("assets/img/semua.png"),
                              const Text(
                                'Semua',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      //filter produk teh
                      InkWell(
                        onTap: () {
                          filterProductTeh('teh');
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Color(0xffA4DA22),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              )),
                          height: MediaQuery.of(context).size.height * 1 / 6,
                          width: 300,
                          child: Row(
                            children: [
                              Image.asset("assets/img/teh.png"),
                              const Text(
                                'Teh Jambi',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      //filter produk kopi
                      InkWell(
                        onTap: () {
                          filterProductKopi('kopi');
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Color(0xff5E454B),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              )),
                          height: MediaQuery.of(context).size.height * 1 / 6,
                          width: 300,
                          child: Row(
                            children: [
                              Image.asset("assets/img/kopi.png"),
                              const Text(
                                'Kopi Jambi',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Text(
                'Kategori',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            //hasil filter kategori
            Container(
              height: MediaQuery.of(context).size.height * 1 / 3,
              color: const Color(0xffA4DA22),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: GridView.count(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  crossAxisCount: 1,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: filteredProduct.map((varian) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(varian: varian);
                        }));
                      },
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Center(
                                    //img produk
                                    child: Image.network(
                                      varian.imageUrls,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      //button keranjang
                                      CartButton(),
                                      //button favorite
                                      FavoriteButton(),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child:
                                  //nama produk
                                  Text(
                                varian.name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child:
                                  //harga produk
                                  Text(
                                NumberFormat.currency(
                                        locale: 'id',
                                        symbol: 'Rp ',
                                        decimalDigits: 0)
                                    .format(varian.price),
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.red[400]),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  //icon bintang
                                  Icon(Icons.star_rounded,
                                      color: Colors.orange[600]),
                                  //rating produk
                                  Text(
                                    varian.rating.toString(),
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 5.0, right: 5.0),
                                    width: 1,
                                    height: 18,
                                    color: Colors.blueGrey[900],
                                  ),
                                  //produk yang sudah terjual
                                  Text(
                                    '${varian.terjual.toString()} terjual',
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                  ),
                                ),
                                //lokasi produk
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: Text(
                                    varian.place,
                                    style: const TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Text(
                'Rekomendasi',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: widget.gridCount,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: tehKopiList.map((varian) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(varian: varian);
                        }));
                      },
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Center(
                                    child: Image.network(
                                      varian.imageUrls,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      CartButton(),
                                      FavoriteButton(),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                varian.name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                NumberFormat.currency(
                                        locale: 'id',
                                        symbol: 'Rp ',
                                        decimalDigits: 0)
                                    .format(varian.price),
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.red[400]),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.star_rounded,
                                      color: Colors.orange[600]),
                                  Text(
                                    varian.rating.toString(),
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                        fontSize: 12.0,
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
                                    '${varian.terjual.toString()} terjual',
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: Text(
                                    varian.place,
                                    style: const TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// :)