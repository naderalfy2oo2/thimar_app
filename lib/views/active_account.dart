import 'package:flutter/material.dart';

class ActiveAccount extends StatelessWidget {
  const ActiveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  width: 375,
                  height: 217,
                  decoration: const BoxDecoration(
                    color: Color(0xff4C8613),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),

                      const Text(
                        'حسابي',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 20),

                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          "assets/images/profile.png",
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'محمد علي',
                        style: TextStyle(color: Colors.white),
                      ),

                      const Text(
                        '+96654787856',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/User.png', width: 25),
                    const SizedBox(width: 10),

                    const Text(
                      'البيانات الشخصية',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png', width: 22),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/Wallet.png'),
                    const SizedBox(width: 10),

                    Text(
                      'المحفظة',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/Location.png'),
                    const SizedBox(width: 10),

                    Text(
                      'العناوين',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/Question.png'),
                    const SizedBox(width: 10),

                    Text(
                      'اسئلة المتكررة',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/Shield - check.png'),
                    const SizedBox(width: 10),

                    Text(
                      'سياسة  الخصوص',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/Call - Calling.png'),
                    const SizedBox(width: 10),

                    Text(
                      'تواصل معانا',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/Edit - 3.png'),
                    const SizedBox(width: 10),

                    Text(
                      'الشكاوي والاقتراحات',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/Wallet.png'),
                    const SizedBox(width: 10),

                    Text(
                      'المشاركة التطبيق',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/1.png'),
                    const SizedBox(width: 10),

                    Text(
                      'عن التطبيق',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/edit.png'),
                    const SizedBox(width: 10),

                    Text(
                      'تغير اللغة ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/Note.png'),
                    const SizedBox(width: 10),

                    Text(
                      'الشروط والاحكام ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/Star.png'),
                    const SizedBox(width: 10),

                    Text(
                      'تقيم التطبيق',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/Turn off.png'),
                    const SizedBox(width: 10),

                    Text(
                      'تسجيل الخروج',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),

                    Image.asset('assets/images/Arrow - Left.png'),
                  ],
                ),
              ),

              BottomNavigationBar(
                backgroundColor: Color(0xff4C8613),

                type: BottomNavigationBarType.fixed,

                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white70,

                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'حسابي',
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: 'المفضلة',
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications),
                    label: 'الاشعارات',
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.request_quote_sharp),
                    label: 'طلباتي',
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'الرئيسية ',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
