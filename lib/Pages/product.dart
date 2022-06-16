import 'package:flutter/material.dart';
import 'package:practicas/Styles/colors_view.dart';

class Product extends StatefulWidget {
  Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    String name = arguments['name'];
    String url = arguments['url'];
    String description = arguments['description'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALL 4 MY PET'),
        backgroundColor: ColorSelect.txtBoHe,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(url),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 30),
              alignment: Alignment.topLeft,
              child: Text(
                name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 30),
              alignment: Alignment.topLeft,
              child: Text(
                description,
                style: TextStyle(fontSize: 15, color: Colors.grey[700]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
