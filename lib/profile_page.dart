import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: _navBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.black12,
                  child: Icon(Icons.person, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, size: 32, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Pranchess Abidoye',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('My Account'),
              trailing: Icon(Icons.chevron_right),
            ),
            const ListTile(
              leading: Icon(Icons.security),
              title: Text('Good Security'),
              trailing: Icon(Icons.chevron_right),
            ),
            SwitchListTile(
              title: const Text('Two Factor Authentication'),
              value: true,
              onChanged: (val) {},
            ),
            const ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('Help & Support'),
              trailing: Icon(Icons.chevron_right),
            ),
            const ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('About App'),
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }

  Widget _navBar() => Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: const Icon(Icons.home), onPressed: () {}),
            IconButton(icon: const Icon(Icons.person), onPressed: () {}),
            GestureDetector(
              onTap: () {},
              child: Image.network(
                'icons/excel_icon.png',
                width: 32,
                height: 32,
              ),
            ),
            IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
            IconButton(icon: const Icon(Icons.person_outline), onPressed: () {}),
          ],
        ),
      );
}