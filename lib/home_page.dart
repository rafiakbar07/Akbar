import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/color_config.dart';
import 'package:flutter_application_1/pages/detail_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
            ), 
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.sunny,
                    color: Color.fromARGB(255, 22, 21, 21),
                    ),
                    const SizedBox(width: 8),
                    const Text('Good Night'),

                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        
                      },
                      icon: const Icon (Icons.shopping_cart), 
                      ),
                ],
              ),
              const Text(
                'Rafi Akbar',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),
                const SizedBox(height: 20),
                const Text(
                'Featrured Product',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 220,
                        decoration: BoxDecoration(
                          color:Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/sate.jpg'),
                            fit: BoxFit.cover,
                            ),
                          ), 
                          ),
                          const SizedBox(width: 16),
                          Container(
                            height: 150,
                            width: 220,
                            decoration: BoxDecoration( 
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                             image: const DecorationImage(
                            image: AssetImage('assets/Nasi Soto.jpg'),
                            fit: BoxFit.cover,
                            ),
                            ), 
                          ),
                          const SizedBox(width: 16),
                          Container(
                            height: 150,
                            width: 220,
                            decoration: BoxDecoration(
                              color:Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                               image: const DecorationImage(
                            image: AssetImage('assets/Nasi Rames.jpg'),
                            fit: BoxFit.cover,
                            ),
                              ),
                              ),
            ],
        ),
      ),
      const SizedBox(height: 20),
      Row(
        children: [
        const Text(
          'Category Produk',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: (){

          },
          child: const Text(
          'See All',
          style: TextStyle(
            color: ColorConfig.primaryColor,
          ),
          ),
          ),
        ],
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConfig.primaryColor,
                   ),
                   onPressed: () {},
                   child: const Text(
                    'Breakfast',
                    style: TextStyle(
                      color:Colors.white, 
                      ), 
                      ), 
                      ), 
                      const SizedBox(width:10),
                 ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                   ),
                   onPressed: () {},
                   child: const Text(
                    'Lunch',
                    style: TextStyle(
                      color:Colors.black, 
                      ), 
                      ), 
                      ), 
                      const SizedBox(width:10),
                 ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                   ),
                   onPressed: () {},
                   child: const Text(
                    'Dinner',
                    style: TextStyle(
                      color:Colors.black, 
                      ), 
                      ), 
                      ), 
                      const SizedBox(width:10),
                 ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                   ),
                   onPressed: () {},
                   child: const Text(
                    'Snack',
                    style: TextStyle(
                      color:Colors.black, 
                      ), 
                      ), 
                      ), 
              ],
          ),
      ),
        const SizedBox(height: 10),
        Row(
        children: [
        const Text(
          'Popular Recipe',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: (){

          },
          child: const Text(
          'See All',
          style: TextStyle(
            color: ColorConfig.primaryColor,
          ),
          ),
          ),
        ],
      ),
      GridView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.88,
          ), 
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder: (context)  => const DetailPage(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular (10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity (0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                      ), 
                      ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: const DecorationImage(
                          image: AssetImage('assets/Nasi Tumpeng.jpg'),
                          fit: BoxFit.cover,  
                      ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Nasi Tumpeng',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      children: [
                      Icon(Icons.star, color: Colors.amber),
                       Text('4,5'),
                       Spacer(),
                       Icon(Icons.favorite, color: Colors.red),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular (10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity (0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                    ), 
                    ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                        image: AssetImage('assets/Nasi Goreng.jpg'),
                        fit: BoxFit.cover,  
                    ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Nasi Goreng',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                    Icon(Icons.star, color: Colors.amber),
                     Text('4,6'),
                     Spacer(),
                     Icon(Icons.favorite, color: Colors.red),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular (10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity (0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                    ), 
                    ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                        image: AssetImage('assets/Ragam Makanan.jpg'),
                        fit: BoxFit.cover,  
                    ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Ragam Makanan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                    Icon(Icons.star, color: Colors.amber),
                     Text('4,7'),
                     Spacer(),
                     Icon(Icons.favorite, color: Colors.red),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular (10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity (0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                    ), 
                    ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                        image: AssetImage('assets/Rendang.jpg'),
                        fit: BoxFit.cover,  
                    ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Rendang',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                    Icon(Icons.star, color: Colors.amber),
                     Text('4,8'),
                     Spacer(),
                     Icon(Icons.favorite, color: Colors.red),
                    ],
                  )
                ],
              ),
            ),
          ],
      )
            ]
        ),
      )
    );
      





  }
}