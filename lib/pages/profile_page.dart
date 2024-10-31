import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/color_config.dart';
import 'package:flutter_application_1/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8.0,
            ),
            children:  [
            const   Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
             const SizedBox(height: 16),
             const CircleAvatar(
             maxRadius: 70,
             backgroundImage: AssetImage('assets/Sate.jpg'),
              ),
              const SizedBox(height: 16),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Text(
                      'Nama lengkap :',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text('Muhammad Rafi Akbar Hakim'),
                      SizedBox(height: 8),
                       Text(
                      'NIM :',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text('A11.2023.14917'),
                      SizedBox(height: 8),
                       Text(
                      'Prodi :',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text('Teknik Informatika'),
                      SizedBox(height: 8),
                      Text(
                      'Divisi DNCC :',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text('Mobile Development'),
                      SizedBox(height: 8),
                   ],
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConfig.primaryColor,
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: (){
                  Navigator.pushReplacement(context,
                   MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                 child: const Text(
                  'Keluar',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  ),
                 )
            ],
        ),
        ),
    );
  }
}