import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color(0xFF2EC8C8),
        title: Text('DONATE'),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.more_vert_outlined), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF2EC8C8)),
            child: Center(
              child: Text(
                'Make a Donation',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 100,
                      color: Color(0xFF2EC8C8),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Thank you for choosing to donate!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Please upload a picture of your receipt',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Divider(height: 30, thickness: 3),
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      "Selected Card",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Center(
                    child: Icon(
                      Icons.credit_card,
                      size: 120,
                      color: Color(0xFF2EC8C8),
                    ),
                  ),
                  Center(
                    child: Icon(Icons.more_horiz, size: 50, color: Colors.grey),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2EC8C8),
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Select Amound',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(height: 30, thickness: 3),
                  SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2EC8C8),
                      padding: EdgeInsets.symmetric(
                        horizontal: 100,
                        vertical: 15,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Send Donate',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
