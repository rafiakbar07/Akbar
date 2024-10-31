import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/color_config.dart';
import 'package:flutter_application_1/pages/main_page.dart';
import 'package:flutter_application_1/register_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 100,
            ),
          children:  [
           const Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: ColorConfig.primaryColor,
              ),
              ),
            const Text('Silahkan masukan email dan password'),
            const SizedBox(height: 40),
          const TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
               focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: ColorConfig.primaryColor,
                ),
              ),
              labelText: 'Email',
              labelStyle: TextStyle(
                color: ColorConfig.primaryColor,
              ),
              hintText: 'Masukan email',
            ),
           ) ,
          const  SizedBox(height: 20),
           const TextField(
              obscureText: true,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
               focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: ColorConfig.primaryColor,
                ),
              ),
              labelText: 'Password',
              labelStyle: TextStyle(
                color: ColorConfig.primaryColor,
              ),
              hintText: 'Masukan password',
            ),
           ) ,
           const SizedBox(height: 20),
           ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor:ColorConfig.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: (){
              Navigator.pushReplacement(context, 
              MaterialPageRoute(builder: (context)  => const MainPage()));
            }, 
            child: const Text(
              'Masuk',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Belum punya akun?'),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage()
                        )
                      );
                  }, 
                  child: const Text(
                    'Daftar',
                    style: TextStyle(
                      color: ColorConfig.primaryColor,
                    ),
                    ),
                  ),
              ],
            ),
          ],
        )
        ),
    );
  }
}