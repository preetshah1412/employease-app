import 'package:flutter/material.dart';

class EmployeeDetailPage extends StatelessWidget {
  const EmployeeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Example employee details
    final employee = {
      'id': 'EMP001',
      'name': 'Alexis',
      'age': '29',
      'gender': 'Male',
      'dob': '01/01/1995',
      'phone': '1234567890',
      'email': 'alexis@email.com',
      'address': '123 Main St',
      'department': 'HR',
      'designation': 'Manager',
      'joiningDate': '01/01/2020',
      'reference': 'Mr. Smith',
      'salary': '₹50,000',
      'absentLeave': '2',
      'advanceLeave': '1',
      'totalLeaves': '10',
      'completedLeaves': '7',
    };

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
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
                'icons/excel_icon.png', // For web, use relative path from web folder
                width: 32,
                height: 32,
              ),
            ),
            IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
            IconButton(icon: const Icon(Icons.person_outline), onPressed: () {}),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                'About Employee',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.person, size: 40, color: Colors.grey[700]),
                ),
              ),
              const SizedBox(height: 16),
              ...employee.entries.map((e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: TextFormField(
                  initialValue: e.value,
                  decoration: InputDecoration(
                    labelText: e.key.replaceAll(RegExp(r'([A-Z])'), ' \$1').replaceAll('_', ' ').capitalize(),
                    border: const OutlineInputBorder(),
                  ),
                  readOnly: true,
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

// Helper extension for label formatting
extension StringCasingExtension on String {
  String capitalize() =>
      isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';
}