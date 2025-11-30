import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'السلة',
          style: TextStyle(
            color: Color(0xff4C8613),
            fontSize: 18,
            fontFamily: 'Tajawal',
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 140,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlQrGAFID4f5p7hzBsua0RtIBLy67tRopn5Q&s',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'طماطم',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff4C8613),
                              ),
                            ),

                            Text(
                              '45 ر.س',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff4C8613),
                              ),
                            ),
                            SpinBox(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                iconColor: Color(0xff4C8613),
                              ),
                              textStyle: TextStyle(color: Color(0xff4C8613)),

                              min: 1,
                              max: 100,
                              value: 50,
                              iconColor: WidgetStatePropertyAll(
                                Color(0xff4C8613),
                              ),
                              cursorColor: Color(0xff4C8613),
                              onChanged: (value) => print(value),
                            ),
                          ],
                        ),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                        style: ButtonStyle(
                          iconColor: WidgetStatePropertyAll(Colors.red),
                        ),
                      ),
                      //SvgPicture.asset('assets/svg/delete.svg'),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 140,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlQrGAFID4f5p7hzBsua0RtIBLy67tRopn5Q&s',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'طماطم',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff4C8613),
                              ),
                            ),

                            Text(
                              '45 ر.س',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff4C8613),
                              ),
                            ),
                            SpinBox(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                iconColor: Color(0xff4C8613),
                              ),
                              textStyle: TextStyle(color: Color(0xff4C8613)),

                              min: 1,
                              max: 100,
                              value: 50,
                              iconColor: WidgetStatePropertyAll(
                                Color(0xff4C8613),
                              ),
                              cursorColor: Color(0xff4C8613),
                              onChanged: (value) => print(value),
                            ),
                          ],
                        ),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                        style: ButtonStyle(
                          iconColor: WidgetStatePropertyAll(Colors.red),
                        ),
                      ),
                      //SvgPicture.asset('assets/svg/delete.svg'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 140,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlQrGAFID4f5p7hzBsua0RtIBLy67tRopn5Q&s',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'طماطم',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff4C8613),
                              ),
                            ),

                            Text(
                              '50 ر.س',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff4C8613),
                              ),
                            ),
                            SpinBox(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                iconColor: Color(0xff4C8613),
                              ),
                              textStyle: TextStyle(color: Color(0xff4C8613)),

                              min: 1,
                              max: 100,
                              value: 50,
                              iconColor: WidgetStatePropertyAll(
                                Color(0xff4C8613),
                              ),
                              cursorColor: Color(0xff4C8613),
                              onChanged: (value) => print(value),
                            ),
                          ],
                        ),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                        style: ButtonStyle(
                          iconColor: WidgetStatePropertyAll(Colors.red),
                        ),
                      ),
                      //SvgPicture.asset('assets/svg/delete.svg'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
