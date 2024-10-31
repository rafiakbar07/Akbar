import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        actions: [
          IconButton(
          icon: const Icon(Icons.share), 
            onPressed: () {},
            ),
            IconButton(
          icon: const Icon(Icons.favorite_border_outlined), 
            onPressed: () {},
            ),
            IconButton(
          icon: const Icon(Icons.more_vert), 
            onPressed: () {},
            ),
        ],
      ),
      body: ListView(
        children: [
          Container(
          height: 220,
          decoration: const BoxDecoration(
            image:DecorationImage(
              image: AssetImage('assets/Nasi Tumpeng.jpg'),
              fit: BoxFit.cover,
              ),
          ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nasi Tumpeng', 
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                     ),
                     ),
                Text(
                  'Breakfast',
                  style: TextStyle(
                    color: Colors.grey,
                  ),  
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timelapse,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text('20 Min'),
                        SizedBox(
                          width: 10,
                        ),
                     Icon(
                      Icons.attach_money_outlined,
                     ),
                     Text('10'),
                     Spacer(),
                     Icon(
                      Icons.star,
                      color: Colors.amber,
                     ),
                     Text('4,5'),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 20,
                  ),
                  Text(
                    'Detail',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Nasi Tumpeng adalah hidangan yang disajikan pada upacara adat masyarakat Jawa, Bali, Madura dan Sunda yang penyajian nasinya dibentuk kerucut dan ditata bersama dengan lauk-pauknya. Olahan nasi yang dipakai umumnya berupa nasi kuning, nasi putih biasa, atau nasi uduk. Cara penyajian nasi ini khas Jawa atau masyarakat Betawi keturunan Jawa dan biasanya dibuat pada saat kenduri atau perayaan suatu kejadian penting.',
                  ),
                  SizedBox(
                   height: 10,
                  ),
                  Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('1. 500 gram beras putih yang telah dicuci bersih\n2. 350 ml AQUA\n3. 150 ml santan kental\n4. 2 lembar daun salam\n5. 1 sdt kunyit bubuk\n6. 1 sdm perasan jeruk nipis\n7. 1 batang serai\n8. Garam secukupnya',
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}