import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:practicas/Pages/product.dart';
import 'package:practicas/services/carousel.dart';
import 'package:practicas/services/carouselProduct.dart';
import 'package:practicas/services/filter.dart';
import 'package:practicas/widgets/bottom_canvas_widget.dart';
import 'package:practicas/widgets/dialog.dart';

import '../Styles/colors_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  String? dropdownValue = 'One';
  String? dropdownValue2 = 'Entrega a domicilio';
  int pages = 0;
  PageController controller = PageController();
  List<String> images = [
    'https://www.teahub.io/photos/full/110-1103541_led-gaming-setup.jpg',
    'https://i.ytimg.com/vi/8q9FuGVasGk/maxresdefault.jpg'
  ];

  List<String> gridImages = [
    'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg',
    'https://i.ytimg.com/vi/8q9FuGVasGk/maxresdefault.jpg',
    'https://www.cultofmac.com/wp-content/uploads/2021/12/03xsh0lhgwu71.jpg',
    'https://wallpaperaccess.com/full/5873323.jpg',
    'https://www.teahub.io/photos/full/110-1103541_led-gaming-setup.jpg',
    'https://i.ytimg.com/vi/8q9FuGVasGk/maxresdefault.jpg',
    'https://www.cultofmac.com/wp-content/uploads/2021/12/03xsh0lhgwu71.jpg',
    'https://wallpaperaccess.com/full/5873323.jpg',
    'https://www.teahub.io/photos/full/110-1103541_led-gaming-setup.jpg',
    'https://i.ytimg.com/vi/8q9FuGVasGk/maxresdefault.jpg',
    'https://www.cultofmac.com/wp-content/uploads/2021/12/03xsh0lhgwu71.jpg',
    'https://wallpaperaccess.com/full/5873323.jpg',
    'https://www.teahub.io/photos/full/110-1103541_led-gaming-setup.jpg',
    'https://i.ytimg.com/vi/8q9FuGVasGk/maxresdefault.jpg',
    'https://www.cultofmac.com/wp-content/uploads/2021/12/03xsh0lhgwu71.jpg',
    'https://wallpaperaccess.com/full/5873323.jpg',
    'https://www.teahub.io/photos/full/110-1103541_led-gaming-setup.jpg',
    'https://i.ytimg.com/vi/8q9FuGVasGk/maxresdefault.jpg',
    'https://www.cultofmac.com/wp-content/uploads/2021/12/03xsh0lhgwu71.jpg',
    'https://wallpaperaccess.com/full/5873323.jpg',
    'https://www.teahub.io/photos/full/110-1103541_led-gaming-setup.jpg',
    'https://i.ytimg.com/vi/8q9FuGVasGk/maxresdefault.jpg',
    'https://www.cultofmac.com/wp-content/uploads/2021/12/03xsh0lhgwu71.jpg',
    'https://wallpaperaccess.com/full/5873323.jpg',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _changeImage();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> listWidgets = [
      Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.grey[200]!,
          borderRadius: BorderRadius.circular(50),
        ),
        child: IconButton(
          color: Colors.grey[400]!,
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 5),
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Agregar',
              style: TextStyle(color: Colors.grey[600]!),
            ),
            Text(
              'mascota',
              style: TextStyle(color: Colors.grey[600]!),
            )
          ],
        ),
      )
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tienda'),
        iconTheme: const IconThemeData(color: ColorSelect.paginatorNext),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.manage_accounts,
            ),
          )
        ],
        backgroundColor: ColorSelect.txtBoHe,
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Stack(
          children: [
            CustomPaint(
              size: const Size.fromHeight(80),
              painter: BottomCanvas(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.assignment,
                        size: 35, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.pets, size: 35, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width / 2,
                      height: 150,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, left: 20),
                                child: const Text(
                                  'Hola',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10, left: 5),
                                child: const Text(
                                  'Juan',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 94, 184, 97)),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text(
                                  ',',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(bottom: 15, top: 30),
                                margin: const EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage('assets/img/B1.png'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Entregar ahora',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: ColorSelect.txtBoSubHe,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 80,
                                      child: DropdownButton<String>(
                                        icon: const Icon(
                                            Icons.keyboard_arrow_down),
                                        value: dropdownValue,
                                        items: ['One', 'Two', 'Three']
                                            .map<DropdownMenuItem<String>>(
                                                (value) => DropdownMenuItem(
                                                      child: Text(
                                                        value,
                                                        style: const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 15),
                                                      ),
                                                      value: value,
                                                    ))
                                            .toList(),
                                        onChanged: (newValue) {
                                          setState(() {
                                            dropdownValue = newValue;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width / 2,
                      height: 150,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 70),
                            child: const Image(
                              image: AssetImage('assets/img/B5.png'),
                              width: 90,
                              height: 85,
                            ),
                          ),
                          Container(
                            // padding: const EdgeInsets.only(top: 20),
                            margin: const EdgeInsets.only(left: 25, right: 10),
                            child: DropdownButton<String>(
                              icon: const Icon(Icons.keyboard_arrow_down),
                              value: dropdownValue2,
                              isExpanded: true,
                              items: ['Entrega a domicilio', 'Two', 'Three']
                                  .map<DropdownMenuItem<String>>((value) =>
                                      DropdownMenuItem(
                                        child: Text(
                                          value,
                                          style: const TextStyle(fontSize: 15),
                                        ),
                                        value: value,
                                      ))
                                  .toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  dropdownValue2 = newValue;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 3,
                color: ColorSelect.txtBoSubHe,
              ),
              SizedBox(
                height: 580,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: const Text(
                        'Mis mascotas',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, bottom: 7),
                      width: size.width,
                      height: 60,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: listWidgets,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            child: Column(
                              children: [
                                const Image(
                                  width: 150,
                                  height: 180,
                                  image: AssetImage('assets/img/B5.png'),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: const Text(
                                    'PRODUCTOS',
                                    style: TextStyle(
                                        color: ColorSelect.btnBackgroundBo2,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: [
                                const Image(
                                  width: 150,
                                  height: 180,
                                  image: AssetImage('assets/img/B1.png'),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: const Text(
                                    'SERVICIOS',
                                    style: TextStyle(
                                        color: ColorSelect.btnBackgroundBo2,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 35,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(30)),
                            child: TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              onChanged: (text) {},
                              decoration: const InputDecoration(
                                  focusColor: Colors.grey,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1),
                                  ),
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  hintText: 'Buscar productos o servicios...'),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)),
                            child: IconButton(
                                iconSize: 25,
                                color: Colors.white,
                                onPressed: () {},
                                icon: const Icon(Icons.tune)),
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: size.width - 30,
                        height: 170,
                        child: FutureBuilder(
                          future: carouselImages(),
                          builder: (BuildContext context,
                              AsyncSnapshot<List<String>> snapshot) {
                            if (snapshot.data != null) {
                              return CarouselSlider(
                                items: snapshot.data!.map((e) {
                                  return Center(
                                      child: Image(
                                    image: NetworkImage(e),
                                  ));
                                }).toList(),
                                options: CarouselOptions(
                                    autoPlay: true, viewportFraction: 1),
                              );
                            }
                            return Container();
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                height: 3,
                color: ColorSelect.txtBoSubHe,
              ),
              SizedBox(
                height: 380,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10, left: 20),
                            child: const Text(
                              'PRODUCTOS CERCA',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: 200,
                            height: 50,
                            child: FutureBuilder(
                              builder: (context, AsyncSnapshot<List> snapshot) {
                                if (snapshot.data != null) {
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                        children: snapshot.data!
                                            .map((e) => Container(
                                                  height: 32,
                                                  margin: const EdgeInsets.only(
                                                      left: 5, right: 5),
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary: Colors
                                                                .grey[300]),
                                                    child: Text(
                                                      e,
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[600]),
                                                    ),
                                                    onPressed: () {},
                                                  ),
                                                ))
                                            .toList()),
                                  );
                                }
                                return Container();
                              },
                              future: filterPets(),
                            ),
                          )
                        ]),
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 20),
                      child: FutureBuilder(
                        future: produc_carts(),
                        builder: (BuildContext context,
                            AsyncSnapshot<List<Map<dynamic, dynamic>>>
                                snapshot) {
                          if (snapshot.data != null) {
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: snapshot.data!
                                    .map(
                                      (e) => _createCards(
                                          e['urlImage'],
                                          e['description'],
                                          e['price'],
                                          e['name']),
                                    )
                                    .toList(),
                              ),
                            );
                          }
                          return Container();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createCards(
      String image, String description, double price, String name) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'product', arguments: {
          'url': image,
          'name': name,
          'description': description
        });
      },
      child: Container(
        alignment: Alignment.topLeft,
        width: 185,
        height: 280,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Container(
                width: 180,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(image),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5, top: 10),
                alignment: Alignment.topLeft,
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.green[300], fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 5, top: 20),
                child: Text(
                  description,
                  style: TextStyle(color: Colors.grey[400], fontSize: 11),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 20, left: 5),
                child: Text(
                  r'$' + price.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
