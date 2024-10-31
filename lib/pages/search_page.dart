import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/color_config.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
        children:  [
         const Center(
            child: Text(
              'Search Page',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search),
              enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ), 
                focusedBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: ColorConfig.primaryColor,
                ),
              ), 
            ),
          ),
          const Card(
            margin: EdgeInsets.only(top: 16),
            child: ListTile(
           leading: CircleAvatar(
             backgroundImage: AssetImage('assets/Nasi Tumpeng.jpg'),
              maxRadius: 30,
         ),
          title: Text(
              'Nasi Tumpeng',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               ),
               ), 
             subtitle: Text('Breakfast'),
             trailing: Icon(Icons.arrow_forward_ios),
             ), 
             ), 
             const Card(
            margin: EdgeInsets.only(top: 16),
            child: ListTile(
           leading: CircleAvatar(
             backgroundImage: AssetImage('assets/Nasi Rames.jpg'),
              maxRadius: 30,
         ),
          title: Text(
              'Nasi Rames',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               ),
               ), 
             subtitle: Text('Lunch'),
             trailing: Icon(Icons.arrow_forward_ios),
             ), 
             ), 
             const Card(
            margin: EdgeInsets.only(top: 16),
            child: ListTile(
           leading: CircleAvatar(
             backgroundImage: AssetImage('assets/Ragam Makanan.jpg'),
              maxRadius: 30,
         ),
          title: Text(
              'Ragam Makanan',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               ),
               ), 
             subtitle: Text('Dinner'),
             trailing: Icon(Icons.arrow_forward_ios),
             ), 
             ),
             const Card(
            margin: EdgeInsets.only(top: 16),
            child: ListTile(
           leading: CircleAvatar(
             backgroundImage: AssetImage('assets/Nasi Soto.jpg'),
              maxRadius: 30,
         ),
          title: Text(
              'Nasi Soto',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               ),
               ), 
             subtitle: Text('Snack'),
             trailing: Icon(Icons.arrow_forward_ios),
             ), 
             ),  
        ],
        ),
        ),
    );
  }
}