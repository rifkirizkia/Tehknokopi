import 'package:flutter/material.dart';
import 'package:tehnokopi/screens/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: const Text(
            'Pengaturan Profile',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: const SizedBox(
                    width: 65,
                    height: 65,
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/img/profile.jpg")),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Rifki Rizkia",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800)),
                  Row(
                    children: const [
                      Icon(Icons.money, color: Colors.green),
                      Text("Rp3.535.015.634.00",
                          style: TextStyle(color: Colors.grey, fontSize: 16)),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  const Icon(Icons.settings),
                  Row(
                    children: const [
                      Text("",
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          height: 1,
          width: MediaQuery.of(context).size.width,
          color: Colors.blueGrey[900],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: const Text(
            'Aktivitas saya',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.list_alt_outlined),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: const Text(
                    'Daftar Transaksi',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.favorite_outline),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: const Text(
                    'Favorite',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.star_outline),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: const Text(
                    'Ulasan',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          height: 1,
          width: MediaQuery.of(context).size.width,
          color: Colors.blueGrey[900],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: const Text(
            'Semua kategori',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.shopping_bag_outlined),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: const Text(
                    'Kategori',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.payment_outlined),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: const Text(
                    'Top-Up & Tagihan',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.more_outlined),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: const Text(
                    'Layanan Lainnya',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          height: 1,
          width: MediaQuery.of(context).size.width,
          color: Colors.blueGrey[900],
        ),
        Container(
          margin: const EdgeInsets.only(left: 100.0, right: 100.0),
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  colors: [Colors.red, Colors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.brown[200],
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
                child: const Center(
                    child: Text(
                  "LogOut",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )),
              )),
        ),
      ],
    );
  }
}
