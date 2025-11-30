import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Image.asset('assets/images/login.png')),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: AlignmentGeometry.topRight,
                    child: Text(
                      'نسيت كلمة المرور     ',
                      style: TextStyle(
                        color: Color(0xff4C8613),
                        fontFamily: 'Tajawal',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: AlignmentGeometry.topRight,
                    child: Text('أدخل كلمة المرور الجديدة'),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'كلمة المرور',
                      prefixIcon: Image.asset('assets/images/Unlock.jpg'),
                    ),
                  ),
                ),
                SizedBox(height: 8),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'كلمة المرور ',
                      prefixIcon: Image.asset('assets/images/Unlock.jpg'),
                    ),
                  ),
                ),

                SizedBox(height: 8),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xff4C8613),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'تغيير كلمة المرور',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'لديك حساب بالفعل ؟',
                          style: TextStyle(color: Color(0xff4C8613)),
                        ),

                        Text(
                          ' تسجيل الدخول',
                          style: TextStyle(color: Color(0xff4C8613)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
