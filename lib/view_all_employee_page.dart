import 'package:flutter/material.dart';

class ViewAllEmployeePage extends StatelessWidget {
  const ViewAllEmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Example employee data
    final employees = [
      {'name': 'Alexis', 'age': '29'},
      {'name': 'Label', 'age': '32'},
      {'name': 'Label', 'age': '27'},
      {'name': 'Label', 'age': '41'},
      {'name': 'Label', 'age': '36'},
      {'name': 'Label', 'age': '25'},
      {'name': 'Label', 'age': '30'},
      {'name': 'Label', 'age': '28'},
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
                'Employee List',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search with Name or Employee ID',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: employees.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final emp = employees[index];
                    return Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.black12,
                          child: Icon(Icons.person, color: Colors.black),
                        ),
                        title: Text('${emp['name']}   (Age: ${emp['age']})'),
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {
                          // Show employee details page or dialog
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text(emp['name'] ?? ''),
                              content: Text('Age: ${emp['age']}'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('Close'),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  'Total Employees: ${employees.length}   Load more?',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
