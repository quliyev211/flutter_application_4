import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Ticaret UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ürün Listesi'),
      ),
      body: ListView.builder(
        itemCount: 10, // Örnek olarak 10 ürün
        itemBuilder: (context, index) {
          return ProductListItem(productName: 'Ürün $index');
        },
      ),
    );
  }
}

class ProductListItem extends StatelessWidget {
  final String productName;

  ProductListItem({required this.productName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(productName),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(productName: productName),
          ),
        );
      },
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final String productName;

  ProductDetailScreen({required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Center(
        child: Text('Detaylar burada gösterilecek.'),
      ),
    );
  }
}
