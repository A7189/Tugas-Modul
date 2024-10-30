
import 'package:flutter/material.dart';
class IkanGoreng extends StatelessWidget {
  const IkanGoreng ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tokopedia Homepage Clone',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> _bannerImages = [
    'assets/grad.jpeg',
    'https://www.tokopedia.com/blog/wp-content/uploads/2022/03/Merchandise-Tokopedia-Header-2.jpg',
    'https://via.placeholder.com/800x200?text=Banner+3',
  ];

  final List<Map<String, dynamic>> _products = List.generate(10, (index) {
    return {
      'title': 'Product ${index + 1}',
      'price': '\$${(index + 1) * 10}',
      'image': 'assets/hahay.jpeg',
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tokopedia'),
        actions: [
          IconButton(
            icon: Image.asset('assets/keranjang.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/search.png', width: 24, height: 24),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          // Home Bar
          Container(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                HomeBarItem(title: 'All Categories'),
                HomeBarItem(title: 'Electronics'),
                HomeBarItem(title: 'Fashion'),
                HomeBarItem(title: 'Home & Living'),
                HomeBarItem(title: 'Beauty & Health'),
                HomeBarItem(title: 'Sports & Outdoors'),
                HomeBarItem(title: 'Toys & Hobbies'),
              ],
            ),
          ),
          // Banner
          Container(
            height: 200,
            child: PageView.builder(
              itemCount: _bannerImages.length,
              itemBuilder: (context, index) {
                return Image.network(
                  _bannerImages[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          // Products Grid
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Mungkin buat kamu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: _products.length,
              itemBuilder: (context, index) {
                final product = _products[index];
                return Card(
                  elevation: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.network(
                          product['image'],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product['title'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(product['price']),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HomeBarItem extends StatelessWidget {
  final String title;

  const HomeBarItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}