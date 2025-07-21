import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFF9F9F9),
        elevation: 0,
        actions: [
          IconButton(
            icon: Image.asset('assets/images/dots.png', height: 24),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Column(
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/img15.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFC67C4E),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset('assets/images/edit.png', height: 24),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'johndoe@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                ProfileMenuItem(
                  icon: 'assets/images/Heart1.png',
                  title: 'My Favorites',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: 'assets/images/Discount.png',
                  title: 'My Vouchers',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: 'assets/images/moneys.png',
                  title: 'Payment Methods',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: 'assets/images/note.png',
                  title: 'My Orders',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 2,
      child: ListTile(
        leading: Image.asset(icon, height: 24),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
