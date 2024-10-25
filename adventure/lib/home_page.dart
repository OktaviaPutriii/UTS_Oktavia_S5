import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Menyimpan indeks tab yang dipilih

  // List untuk menyimpan tampilan di setiap tab
  static List<Widget> _widgetOptions = <Widget>[
    // Tab Home
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.home, size: 100, color: Colors.blue),
        SizedBox(height: 20),
        Text(
          'Welcome to Adventure App!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Sewa Alat Petualangan - Siap Menemani Petualangan Anda!',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Selamat datang di layanan sewa alat petualangan kami! Kami memahami bahwa setiap petualangan membutuhkan persiapan yang tepat, dan kami di sini untuk membantu Anda mendapatkan alat yang Anda butuhkan untuk menjelajahi alam dengan nyaman dan aman. '
            'Kami menyediakan berbagai macam alat dan perlengkapan outdoor berkualitas tinggi, mulai dari peralatan mendaki, camping, hingga alat snorkeling dan bersepeda. Setiap alat yang kami tawarkan telah melalui proses pemeriksaan ketat untuk memastikan keamanan dan kinerja terbaik.',
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
    // Tab Kontak
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.contact_phone, size: 100, color: Colors.green),
        SizedBox(height: 20),
        Text(
          'Kontak Kami',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Email: support@adventure.com\nPhone: +62 123 4567 890',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    // Tab Produk
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Produk Peralatan Mendaki',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              // Item 1
              Card(
                elevation: 5,
                margin: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.miscellaneous_services,
                      size: 50, color: Colors.orange), // Updated icon
                  title: Text('Tenda Hiking'),
                  subtitle: Text(
                      'Harga: Rp 150.000 / Hari\nDeskripsi: Tenda ringan untuk 2 orang. Ideal untuk hiking dan camping.'),
                  trailing: Text('Sewa: 2 Hari'),
                ),
              ),
              // Item 2
              Card(
                elevation: 5,
                margin: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.miscellaneous_services,
                      size: 50, color: Colors.orange), // Updated icon
                  title: Text('Sleeping Bag'),
                  subtitle: Text(
                      'Harga: Rp 50.000 / Hari\nDeskripsi: Sleeping bag nyaman untuk segala cuaca.'),
                  trailing: Text('Sewa: 3 Hari'),
                ),
              ),
              // Item 3
              Card(
                elevation: 5,
                margin: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.miscellaneous_services,
                      size: 50, color: Colors.orange), // Updated icon
                  title: Text('Backpack'),
                  subtitle: Text(
                      'Harga: Rp 100.000 / Hari\nDeskripsi: Ransel ergonomis dengan ruang yang cukup.'),
                  trailing: Text('Sewa: 1 Hari'),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adventure App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(
            _selectedIndex), // Menampilkan konten berdasarkan tab yang dipilih
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: 'Kontak',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Produk',
          ),
        ],
        currentIndex: _selectedIndex, // Indeks tab yang dipilih
        selectedItemColor: Colors.blue, // Warna ikon saat dipilih
        onTap: _onItemTapped, // Fungsi ketika tab di-tap
      ),
    );
  }
}
