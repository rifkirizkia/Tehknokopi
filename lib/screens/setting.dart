import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(15.0),
          //judul halaman
          child: const Text(
            'Pengaturan Akun',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.location_on_outlined),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5.0, bottom: 5.0),
                      child: const Text(
                        'Daftar Alamat',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: const Text(
                        'Atur alamat pengiriman belanjaan',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.account_balance_wallet_outlined),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5.0, bottom: 5.0),
                      child: const Text(
                        'Pembayaran Instan',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: const Text(
                        'E-wallet, kartu kredit & debit instan terdaftar',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.security_outlined),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5.0, bottom: 5.0),
                      child: const Text(
                        'Keamanan Akun',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: const Text(
                        'Kata sandi, PIN, verifikasi data diri',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
          height: 1,
          width: MediaQuery.of(context).size.width,
          color: Colors.blueGrey[900],
        ),
        Container(
          margin: EdgeInsets.all(15.0),
          child: const Text(
            'Pengaturan Aplikasi',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.notifications_on_outlined),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5.0, bottom: 5.0),
                      child: const Text(
                        'Notifikasi',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: const Text(
                        'Atur segala jenis pesan notifikasi',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.image_outlined),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5.0, bottom: 5.0),
                      child: const Text(
                        'Kualitas Gambar',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: const Text(
                        'Atur kualitas gambar yang kamu lihat',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.shield_outlined),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5.0, bottom: 5.0),
                      child: const Text(
                        'Safe Mode',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: const Text(
                        'Hasil pencarian aman untuk segala usia',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.cached_outlined),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5.0, bottom: 5.0),
                      child: const Text(
                        'Bersihkan Cache',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5.0),
                      child: const Text(
                        'Solusi cepat untuk atasi masalah aplikasi',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          hoverColor: const Color.fromARGB(255, 219, 219, 219),
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, bottom: 7.5, top: 7.5),
            child: Row(
              children: [
                const Icon(Icons.camera_alt_outlined),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5.0, bottom: 5.0),
                      child: const Text(
                        'Perekam Layar',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5.0),
                      child: const Text(
                        'Lampiran video untuk laporan kendala',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
          height: 1,
          width: MediaQuery.of(context).size.width,
          color: Colors.blueGrey[900],
        ),
      ],
    );
  }
}
