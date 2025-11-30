import 'package:flutter/material.dart';

class Aboutview extends StatefulWidget {
  const Aboutview({super.key});

  @override
  State<Aboutview> createState() => _AboutviewState();
}

class _AboutviewState extends State<Aboutview> {
  bool _isDark = false;
  // bool _isLight = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch(
            value: _isDark,

            onChanged: (value) {
              setState(() {
                _isDark = value;
              });
            },
          ),
        ],
        centerTitle: true,

        title: Text(
          'عن التطبيق',
          style: TextStyle(color: Color(0xff4C8613), fontFamily: 'Tajawal'),
        ),
        leading: ClipOval(
          child: IconButton(
            style: ButtonStyle(
              iconColor: MaterialStatePropertyAll(Color(0xff4C8613)),
            ),
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/login.png'),
              SizedBox(height: 10),
              Text('هذا النص هو مثال لنص يمكن أن يستبدل في نفس ' * 40),
            ],
          ),
        ),
      ),
    );
  }
}
