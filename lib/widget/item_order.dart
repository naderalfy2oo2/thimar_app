import 'package:flutter/material.dart';

class ItemOrder extends StatelessWidget {
  const ItemOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'طلب #4587',
                            style: TextStyle(
                              color: Color(0xff4C8613),
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(text: '\n'),

                          TextSpan(text: '27يونيو,2021,'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Text(
                  'المنتهي',
                  style: TextStyle(color: Color(0xff4C8613)),
                ),
              ),
            ),

            Row(
              children: [
                ...List.generate(
                  3,
                  (index) => Container(
                    clipBehavior: Clip.hardEdge,
                    height: 25,
                    width: 25,
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),

                      border: Border.all(color: Color(0xff4C8613)),
                    ),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Tomato_je.jpg/1231px-Tomato_je.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(7),
                  child: Text('+5'),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 171, 200, 172),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),

                Text('180ر.س', style: TextStyle(color: Color(0xff4C8613))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
