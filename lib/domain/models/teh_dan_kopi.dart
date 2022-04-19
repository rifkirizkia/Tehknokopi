class TehKopi {
  int index;
  String category;
  String name;
  String description;
  int price;
  String place;
  String garansi;
  int terjual;
  int stock;
  double rating;
  String imageUrls;

  TehKopi(
      {required this.index,
      required this.category,
      required this.name,
      required this.description,
      required this.price,
      required this.terjual,
      required this.garansi,
      required this.stock,
      required this.rating,
      required this.place,
      required this.imageUrls});
}

var tehKopiList = [
  TehKopi(
      index: 1,
      category: 'teh',
      name: 'Teh Cemplung Pink',
      place: 'Kota Bekasi',
      garansi: 'Tidak Ada Garansi',
      stock: 10,
      terjual: 13,
      rating: 4.5,
      description:
          'Spesifikasi Teh Cemplung Pink Small size isi 10 sachet @ 10 gram Teh Cemplung Pink Small size isi 10 sachet @ 10 gram. Praktis Mudah Bersih Ringkes Stok MudahProduk ini sudah dilengkapi BPOM RI MD dan Halal MUI1 sachet isi 15 gram daun teh dibungkus filter teh.1 sachet diseduh dengan 2-3 liter air mendidih, rendam 10-15 menit.Tersedia Varian : - Teh Hitam / Cemplung Biru - Teh Hijau / Cemplung Hijau - Teh Melati / Cemplung Pink - Teh Ocha',
      price: 15000,
      imageUrls:
          'https://image.jualteh.com/s3/productimages/webp/co22536/p913151/w600-h600/f3612cb4-caf0-4922-8cc5-706057a0500e.png'),
  TehKopi(
      index: 2,
      category: 'teh',
      name: 'KATEKIN Teh celup sachet Teh Hijau',
      place: 'Kab. Bandung',
      garansi: 'Tidak Ada Garansi',
      stock: 63,
      terjual: 25,
      rating: 4.3,
      description:
          'KATEKIN Teh Hijau Celup Sachet khusus HORECA (Hotel, Restaurant, Cafe)Teh Celup kami menggunakan filter teh terstandar Internasional Teh Hijau Celup kemasan 1 sachet 1 tea bag Berijin BPOM dan Halal resmi1 Teabag berisi 2 gram daun teh hijau1 pack isi 125 sachet',
      price: 54000,
      imageUrls:
          'https://image.jualteh.com/s3/productimages/webp/co22536/p913089/w600-h600/a0c7ada2-b325-41e6-b310-248df82361a9.png'),
  TehKopi(
      index: 3,
      category: 'teh',
      name: 'KATEKIN Teabag los Teh Melati',
      place: 'Kota Bandung',
      garansi: 'Tidak Ada Garansi',
      stock: 124,
      terjual: 324,
      rating: 4.8,
      description:
          'Spesifikasi KATEKIN Teabag los Teh Melati - 1 ball isi 125 sachet @ 2 gram. KATEKIN Teh Hijau Melati Celup untuk HORECA (Hotel, Restaurant, Cafe)Teh Celup kami menggunakan filter teh terstandar Internasional Teh Melati Celup los-losan Berijin BPOM dan Halal resmi1 Teabag berisi 2 gram daun teh Melati1 pack isi 125 sachet',
      price: 30000,
      imageUrls:
          'https://image.jualteh.com/s3/productimages/webp/co22536/p913122/w600-h600/5aec76fc-2660-44ae-9729-406503f2393c.png'),
  TehKopi(
      index: 4,
      category: 'teh',
      name: 'Teh Cemplung Biru JUMBO',
      place: 'Kota Jakarta',
      garansi: 'Tidak Ada Garansi',
      stock: 86,
      terjual: 68,
      rating: 3.9,
      description:
          'Spesifikasi Teh Cemplung Biru JUMBO isi 36 sachet @ 15 gram Teh Cemplung Biru Jumbo isi 36 sachet @ 15 gramPraktis Mudah Bersih Ringkes Stok MudahProduk ini sudah dilengkapi BPOM RI MD dan Halal MUI1 sachet isi 15 gram daun teh dibungkus filter teh.1 sachet diseduh dengan 2-3 liter air mendidih, rendam 10-15 menit.Tersedia Varian : - Teh Hitam / Cemplung Biru - Teh Hijau / Cemplung Hijau - Teh Melati / Cemplung Pink - Teh Ocha',
      price: 55000,
      imageUrls:
          'https://image.jualteh.com/s3/productimages/webp/co22536/p913129/w600-h600/0ce8c46e-01df-4043-957a-a084b58cddbb.png'),
  TehKopi(
      index: 5,
      category: 'teh',
      name: 'TONG TJI Celup Jasmine Tea ',
      place: 'Kota Banten',
      garansi: 'Tidak Ada Garansi',
      stock: 37,
      terjual: 498,
      rating: 5.0,
      description:
          'Tong Tji Green Tea Jasmine Teh Celup dengan Amplop adalah green tea jasmine (teh hijau melati) yang dibuat dari daun teh hijau pilihan yang dipadukan dengan daun melati asli. Produk ini berupa teh celup (tea bags) dengan kemasan amplop untuk tiap celupnya. Perpaduan green tea dengan aroma floral yang memiliki rasa yang soft dipadukan dengan bunga melati asli yang pas untuk dinikmati kapan saja',
      price: 11000,
      imageUrls:
          'https://id.360buyimg.com/Indonesia/s880x0_/nHBfsgAA7gAAAAEAQRvbzgAFXc8.jpg.dpg.webp'),
  TehKopi(
      index: 6,
      category: 'kopi',
      name: 'ARUTALA Kopi Robusta Jawa Java Robusta Coffee',
      place: 'Kota Jakarta',
      garansi: 'Tidak Ada Garansi',
      stock: 68,
      terjual: 312,
      rating: 4.1,
      description:
          'Bagi penikmat kafein, kopi robusta Jawa ini sangat pas di lidah dan juga di kantong. Salah satu kopi single origin yang banyak fansnya dan begitu digoreng di artisan roastery-in-house kami, langsung ga ada yang bisa mengalahkan kekuatan jenis kopi yang satu ini!',
      price: 28000,
      imageUrls:
          'https://id.360buyimg.com/Indonesia/s880x0_/amZzL3Q3MC8xNTQvMzYzODIwOTkzMy81NTg2OS9iNDUyMjM3Yi82MDMzNjM4OE5iYTczZTAwNg.jpg.dpg.webp'),
  TehKopi(
      index: 7,
      category: 'kopi',
      name: 'ARUTALA Kopi Colombia Decaf Arabika',
      place: 'Kota Bandung',
      garansi: 'Tidak Ada Garansi',
      stock: 95,
      terjual: 233,
      rating: 3.6,
      description:
          'Kopi ini tanpa kafein menggunakan metode etil asetat tanpa kafein, yang mengekspos kacang hijau ke air dan uap untuk memperluas sel-sel kacang sebelum mencucinya dengan larutan Etil Asetat, yang menarik dan menghilangkan kafein. Etil Asetat yang digunakan dalam proses ini adalah produk sampingan yang diperoleh secara alami dari fermentasi tebu. Setelah pencucian Etil Asetat, kopi dibilas dan dikeringkan.',
      price: 170000,
      imageUrls:
          'https://id.360buyimg.com/Indonesia/s880x0_/amZzL3Q3Ni8xMTEvMzc0NDg2NzI1OC8yNDU3NTcvOGM0YzRjZC82MDQxOWZhZE5mMmZkZTYzYg.jpg.dpg.webp'),
  TehKopi(
      index: 8,
      category: 'kopi',
      name: 'ARUTALA Kopi Toraja Sapan Arabika Coffee',
      place: 'Kab. Bekasi',
      garansi: 'Tidak Ada Garansi',
      stock: 576,
      terjual: 94,
      rating: 4.0,
      description:
          'Medium Dark Sulawesi Toraja Sapan memiliki isi yang penuh, berat dan profil rasa yang kaya dan bersahaja yang menampilkan petunjuk rempah-rempah yang halus. Khas kopi Indonesia, kacang Arabika 100% ini memiliki keasaman yang rendah dan membuat panggang gelap sedang yang berani namun halus. Biji gourmet serbaguna sangat cocok untuk pembuat kopi tetes, espresso, tuangkan, pers Prancis, perkolator, dan polong kopi yang dapat digunakan kembali.',
      price: 43000,
      imageUrls:
          'https://id.360buyimg.com/Indonesia/s880x0_/amZzL3Q2NC8yODAvMzYyODM5OTI3OS81ODU3Mi8zZTEwNDc4ZS82MDMzNTdiZU4zZDg1MzliNw.jpg.dpg.webp'),
  TehKopi(
      index: 9,
      category: 'kopi',
      name: 'ARUTALA Kopi Aroma Blend',
      place: 'Kota Medan',
      garansi: 'Tidak Ada Garansi',
      stock: 356,
      terjual: 235,
      rating: 3.6,
      description:
          'Rahasia campuran ini adalah kompleksitas santai adalah kacang Indonesia yang kaya dan hangat. Arutala Aroma Blend Coffee memungkinkan Anda menikmati pengalaman Arutala dengan nyaman. Memberikan rasa yang renyah dan kompleks, aroma yang kaya dan tubuh yang halus, kopi panggang medium-dark yang lezat ini sangat cocok untuk diteguk sepanjang hari. Kopi Robusta 100% ini dipanen dengan hati-hati dari iklim unik dan tanah pegunungan pesisir dari 4 asal yang berbeda di Indonesia.',
      price: 32000,
      imageUrls:
          'https://id.360buyimg.com/Indonesia/s880x0_/amZzL3Q3MC8yNjMvMzcwOTY5MjIwMi83MTAwNC85ODZjYzM4ZC82MDM2MDU4Mk42NjYyYjc3Nw.jpg.dpg.webp'),
  TehKopi(
      index: 10,
      category: 'kopi',
      name: 'WoCA Kopi Luwak DRIP ROBUSTA',
      place: 'Kota Bekasi',
      garansi: 'Tidak Ada Garansi',
      stock: 753,
      terjual: 73,
      rating: 4.3,
      description:
          'Abad ke-18 merupakan cikal bakal terbentuknya kopi luwak yang saat ini terkenal sebagai kopi termahal di dunia. Kopi Luwak ini dahulu hanya boleh diminum oleh para petinggi koloni Belanda di Indonesia. Luwak hanya mencari buah kopi yang telah mencapai kematangan di atas 90%, itu membuat aromanya unik dan rasa yang luar biasa sehingga tiada duanya.',
      price: 8000,
      imageUrls:
          'https://id.360buyimg.com/Indonesia/s880x0_/amZzL3Q3Ni8zMjQvMTE0NjA3ODE3NS84ODM0MS8xYjc3NzE0NS81ZWY0NDRmN05kNjI1MmEyMA.jpg.dpg.webp'),
];
