
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';

import '../config/color_config.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              'Buat Akun Anda',
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
              labelText: 'Username',
              labelStyle: TextStyle(
                color: ColorConfig.primaryColor,
              ),
              hintText: 'Masukan Username',
            ),
           ) ,
          const  SizedBox(height: 20),
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
              backgroundColor: ColorConfig.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: (){}, 
            child: const Text(
              'Daftar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Sudah punya akun?'),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }));
                    
                  }, 
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                      color: ColorConfig.primaryColor,
                    ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
