import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'الاشعارات',
            style: TextStyle(color: Color(0xff4C8613), fontFamily: 'Tajawal'),
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/bin.png'),

                    title: Text('تم قبول طلبك وجاري تحضيره الأن'),
                    subtitle: Text(
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى',
                    ),
                  ),
                ),
                SizedBox(height: 8),

                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/login.png'),
                    title: Text('رسالة إدارية'),
                    subtitle: Text(
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى',
                    ),
                  ),
                ),

                SizedBox(height: 8),

                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/percent.png'),
                    title: Text('عروض جديدة بإنتظارك'),
                    subtitle: Text(
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff4C8613),
          type: BottomNavigationBarType.fixed,

          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),

            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'الاشعارات ',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'المفضلة',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.request_page),
              label: 'طلباتي ',
            ),
          ],
        ),
      ),
    );
  }
}
