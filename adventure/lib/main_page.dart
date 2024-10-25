import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adventure App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/logo.png'), // Update with your logo path
            ),
            SizedBox(height: 20),
            Text(
              'Selamat Datang di Adventure App!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Silakan akses aplikasi ini untuk memulai petualangan mendaki.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text('Login', style: TextStyle(fontSize: 18)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text('Register', style: TextStyle(fontSize: 18)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
