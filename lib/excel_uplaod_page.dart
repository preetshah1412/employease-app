import 'package:flutter/material.dart';

class UploadExcelPage extends StatelessWidget {
  const UploadExcelPage({super.key});

  @override
  Widget build(BuildContext context) {
    final excelFields = [
      'Employee ID',
      'First Name',
      'Last Name',
      'Age',
      'Mr./Mrs.',
      'Gender',
      'Date of Birth',
      'Email Address',
      'Mobile Number',
      'Aadhar Number',
      'Pan Number',
      'Designation',
      'Month',
      'Year',
      'Total days of Month',
      'Allowed Leave',
      'Leave Taken',
      'Worked days',
      'Salary',
    ];

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
            IconButton(
              icon: const Icon(Icons.person_outline),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
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
                'Upload Excel',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    // Add your Excel sheet upload logic here
                  },
                  child: const Text(
                    'Add your Excel Sheet',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
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
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    // Open your Excel page logic here
                  },
                  child: const Text(
                    'Open Your Excel page',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'List of Items your Excel should have in following manner:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemCount: excelFields.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text('${index + 1}. ${excelFields[index]}'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
