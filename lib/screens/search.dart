import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);
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
          title: const Text('Riwayat Pemesanan'),
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
                      child: Column(
                        children: [
                          Row(
                            children: [],
                          )
                        ],
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
