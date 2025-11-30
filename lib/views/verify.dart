import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class VerifyView extends StatefulWidget {
  const VerifyView({super.key});

  @override
  State<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/login.png'),
              ),

              Text('نسيت كلمة المرور '),

              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          ' نسيت كلمه المرور دخل الكود المتون من 4 ارقام علي رم الجوال ',
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  Text('\n 099653533+'),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'تغير رقم الجوال ',
                      style: TextStyle(color: Color(0xff4C8613)),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),

              Center(
                child: PinCodeTextField(
                  pinBoxRadius: BorderSide.strokeAlignInside,
                  pinTextStyle: TextStyle(color: Colors.black, fontSize: 18),
                  //controller: TextEditingController(),
                  autofocus: true,

                  hideCharacter: false,
                  highlight: true,

                  //defaultBorderColor: Colors.black,
                  hasTextBorderColor: Colors.green,
                  highlightPinBoxColor: Colors.white,
                ),
              ),
              SizedBox(height: 37),

              SizedBox(
                width: 343,
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xff4C8613)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'تأكيد الكود',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 23),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'لم تستلم الكود ؟'),
                      TextSpan(text: '\nيمكنك إعادة إرسال الكود بعد'),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),

              Center(
                child: CircularCountDownTimer(
                  controller: CountDownController(),
                  width: 60,
                  height: 69,
                  duration: 90,
                  textFormat: CountdownTextFormat.MM_SS,
                  textStyle: TextStyle(color: Color(0xff4C8613)),
                  isReverse: true,
                  isReverseAnimation: true,
                  fillColor: Colors.grey,
                  ringColor: Color(0xff4C8613),
                ),
              ),

              Center(
                child: OutlinedButton(
                  style: ButtonStyle(
                    side: WidgetStatePropertyAll(
                      BorderSide(color: Color(0xff4C8613)),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'إعادة الإرسال',
                    style: TextStyle(color: Color(0xff4C8613)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'لديك حساب بالفعل ؟ ',
                      style: TextStyle(color: Color(0xff4C8613)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        ' تسجيل الدخول',
                        style: TextStyle(
                          color: Color(0xff4C8613),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
