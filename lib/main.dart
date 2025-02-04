import 'package:flutter/material.dart';
import 'package:flutter_first_application/model/product.model.dart';
import 'package:flutter_first_application/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Accueil'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  final List<Product> products = [
    Product(
        title: 'Puma Rouge',
        description:
            'Baskets Puma rouges, modèle sport et tendance. Parfaites pour le quotidien comme pour le sport.',
        characteristics: [
          'Semelle amortissante',
          'Tissu respirant',
          'Design moderne'
        ],
        price: 89.99,
        imgUrl: 'assets/img/puma-rouge.jpeg'),
    Product(
        title: 'Nike Air',
        description:
            'Baskets Nike Air confortables et stylées pour toutes les occasions.',
        characteristics: [
          'Coussin d air',
          'Tissu résistant',
          'Confort optimal'
        ],
        price: 119.99,
        imgUrl: 'assets/img/nike.webp'),
    Product(
        title: 'Adidas Run',
        description:
            'Chaussures Adidas idéales pour la course et le sport au quotidien.',
        characteristics: ['Légèreté', 'Bonne adhérence', 'Respirabilité'],
        price: 99.99,
        imgUrl: 'assets/img/adidas.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Liste des chaussures'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Image.asset(product.imgUrl ?? '',
                    width: 80, fit: BoxFit.fitWidth),
                title: Text(product.title,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(product.description,
                    maxLines: 2, overflow: TextOverflow.ellipsis),
                trailing: Text('\$${product.price}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyProductPage(product: product),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
