import 'package:flutter/material.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
            color: Color(0xff4C8613),
          ),
          centerTitle: true,
          title: Text(
            'سياسة الخصوصية ',
            style: TextStyle(color: Color(0xff4C8613), fontFamily: 'Tajawal'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى ' *
                    40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
