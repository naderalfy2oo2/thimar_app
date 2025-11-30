import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<dynamic> _products = [];
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  Future<void> _fetchProducts() async {
    try {
      final response = await Dio().get(
        'https://thimar.amr.aait-d.com/api/products',
      );

      setState(() {
        _products = response.data["data"];
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (_error != null) {
      return Scaffold(body: Center(child: Text("Error: $_error")));
    }

    if (_products.isEmpty) {
      return const Scaffold(body: Center(child: Text("لا يوجد منتجات")));
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 16),
                child: Text(
                  'الاقسام',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: [
                    Image.asset('assets/images/fruit.png'),
                    const SizedBox(width: 8),
                    Image.asset('assets/images/vegetable.png'),

                    const SizedBox(width: 8),
                    Image.asset('assets/images/tomateos.png'),
                    const SizedBox(width: 8),
                    Image.asset('assets/images/spices.png'),
                    const SizedBox(width: 8),
                    Image.asset('assets/images/steak.png'),
                    const SizedBox(width: 8),
                    Image.asset('assets/images/fruit.png'),
                    const SizedBox(width: 8),
                    Image.asset('assets/images/vegetable.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 16),
                child: Text(
                  'الاصناف',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),

              SizedBox(height: 8),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.70,
                ),
                itemCount: _products.length,
                itemBuilder: (context, index) {
                  final item = _products[index];
                  return _Item(product: item);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final dynamic product;

  const _Item({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black12)],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Image.network(
                    product["main_image"],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  if (product["discount"] != 0)
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Color(0xff4C8613),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "${product['discount']}%",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                ],
              ),
            ),
          ),

          SizedBox(height: 6),

          Text(
            product["title"],
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff4C8613),
            ),
          ),

          SizedBox(height: 4),

          Text(
            "السعر / 1 كجم",
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),

          SizedBox(height: 4),

          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "${product["price"]} ر.س ",
                  style: TextStyle(
                    color: Color(0xff4C8613),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (product["price_before_discount"] != null)
                  TextSpan(
                    text: " ${product["price_before_discount"]} ر.س",
                    style: TextStyle(
                      fontSize: 12,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.black45,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
