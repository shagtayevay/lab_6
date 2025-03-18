import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String password;

  UserInfoPage({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(name, style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            
            Text(
              'Email Address:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(email, style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            
            Text(
              'Phone Number:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(phone, style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),

            Text(
              'Password:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text('*' * password.length, style: TextStyle(fontSize: 18, color: Colors.red)),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Возвращает на предыдущий экран
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}