import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:practicas/widgets/dialog.dart';

import '../Styles/colors_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
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
    _changeImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Title'),
        iconTheme: const IconThemeData(color: ColorSelect.paginatorNext),
        actions: [
          Container(
            padding: const EdgeInsets.only(left: 90),
            height: 60,
            width: 170,
            child: Image.asset('assets/img/splash.png'),
          )
        ],
        backgroundColor: ColorSelect.txtBoHe,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Home',
          ),
        ],
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: ColorSelect.txtBoHe,
        currentIndex: 1,
        onTap: (index) {},
        // backgroundColor: ColorSelect.txtBoHe,
      ),
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 35, left: 20, right: 20, bottom: 20),
            width: double.infinity,
            height: 150,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  pages = value;
                });
              },
              itemCount: 3,
              itemBuilder: (context, index) => Image.asset(
                'assets/img/img.jpg',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      List.generate(3, (index) => animatedMethod(index: index)),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30),
            color: ColorSelect.txtBoHe,
            width: double.infinity,
            height: 70,
            child: CarouselSlider(
              options: CarouselOptions(
                disableCenter: true,
                viewportFraction: 0.3,
              ),
              items: images
                  .map((item) => Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(item),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
            width: double.infinity,
            height: 300,
            color: ColorSelect.txtBoHe,
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 4,
              children: gridImages.map((item) => _createCards(item)).toList(),
            ),
          )
        ],
      ),
    );
  }

  Card _createCards(String image) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: InkWell(
          onTap: () async {
            await showDialog(
                context: context,
                builder: (_) => DialogContainer(image: image));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
        ));
  }

  AnimatedContainer animatedMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: pages == index
              ? ColorSelect.paginatorNext
              : ColorSelect.txtBoSubHe),
      height: 5,
      width: pages == index ? 20 : 15,
      duration: kThemeAnimationDuration,
    );
  }

  void _changeImage() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (pages == 2) {
        controller.jumpToPage(controller.initialPage);
      } else {
        controller.nextPage(
            duration: const Duration(seconds: 1), curve: Curves.easeIn);
      }
    });
  }
}
