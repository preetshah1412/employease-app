import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'HEY (COMPANY\'S NAME)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.black12,
                    child: Icon(Icons.person, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "HERE'S YOUR TODAY'S DASHBOARD !",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Dashboard',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Total Employees: 150'),
                    Text('Number of Employees on Leave: 10'),
                    Text('Employees Absent without Leave: 2'),
                    Text('Present Today: 130'),
                    Text('Birthday Today: 1'),
                    Text('Upcoming Work Anniversary: 4'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Recent Activity',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView(
                  children: const [
                    Card(
                      child: ListTile(
                        title: Text('Mr. Kyle is Absent Today'),
                        trailing: Icon(Icons.info_outline),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Ms. Reema has applied for a leave'),
                        trailing: Icon(Icons.info_outline),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Today is Mr. Singh's Birthday"),
                        trailing: Icon(Icons.cake),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          'Tomorrow is work anniversary of Mr. Talati',
                        ),
                        trailing: Icon(Icons.event),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
