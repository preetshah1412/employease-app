import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
            const Text(
              'Settings',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            const ListTile(
              title: Text('Edit profile'),
              trailing: Icon(Icons.chevron_right),
            ),
            const ListTile(
              title: Text('Change password'),
              trailing: Icon(Icons.chevron_right),
            ),
            const ListTile(
              title: Text('Add a payment method'),
              trailing: Icon(Icons.chevron_right),
            ),
            SwitchListTile(
              title: const Text('Push notifications'),
              value: true,
              onChanged: (val) {},
            ),
            SwitchListTile(
              title: const Text('Dark mode'),
              value: false,
              onChanged: (val) {},
            ),
            const ListTile(
              title: Text('About us'),
              trailing: Icon(Icons.chevron_right),
            ),
            const ListTile(
              title: Text('Privacy policy'),
              trailing: Icon(Icons.chevron_right),
            ),
            const ListTile(
              title: Text('Terms and conditions'),
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
        BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, -2)),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(icon: const Icon(Icons.home), onPressed: () {}),
        IconButton(icon: const Icon(Icons.person), onPressed: () {}),
        GestureDetector(
          onTap: () {},
          child: Image.network('icons/excel_icon.png', width: 32, height: 32),
        ),
        IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        IconButton(icon: const Icon(Icons.person_outline), onPressed: () {}),
      ],
    ),
  );
}
