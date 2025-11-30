import 'package:country_code_picker/country_code_picker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoading = false;


  Future<void> login() async {
    setState(() => isLoading = true);

    final dio = Dio(
      BaseOptions(
        baseUrl: "https://thimar.amr.aait-d.com/api/",
        headers: {"Accept": "application/json"},
      ),
    );

    try {
      FormData data = FormData.fromMap({
        "phone": phoneController.text.trim(),
        "password": passwordController.text.trim(),
        "device_token": "test",
        "type": "ios",
        "user_type": "client",
      });

      final response = await dio.post("login", data: data);

      print("RES: ${response.data}");

      if (response.data["status"] == "success") {
   
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("تم تسجيل الدخول بنجاح")));

        Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(response.data["message"])));
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("خطأ في الاتصال بالسيرفر")));
    }

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/login.png'),
              ),

              const SizedBox(height: 8),

              const Text(
                ' مرحبا بك مرة أخرى',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w700,
                  color: Color(0xff4C8613),
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                ' يمكن تسجيل الدخول الأن',
                style: TextStyle(color: Color(0xff707070)),
              ),

              const SizedBox(height: 20),

             
              Row(
                children: [
                  CountryCodePicker(
                    initialSelection: 'SA',
                    showFlag: true,
                    showDropDownButton: true,
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'رقم الجوال ',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          prefixIcon: Image.asset('assets/images/Phone.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

           
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'assets/images/Unlock.jpg',
                      height: 5,
                      width: 5,
                    ),
                    labelText: 'كلمة المرور ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'نسيت كلمة المرور',
                    style: TextStyle(color: Color(0xff707070)),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff4C8613),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: isLoading ? null : login,
                    child: isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            'تسجيل الدخول ',
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
