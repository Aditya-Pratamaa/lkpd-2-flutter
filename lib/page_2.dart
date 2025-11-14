import 'package:flutter/material.dart';
import 'package:lkpd_2/page_3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<Map<String, dynamic>> dataList = [
    {
      'title': 'Help Lorem ipsum 01',
      'subtitle':
          'Lorem ipsum dolor sit amet adipisicing elit, sed diam nonummy nibh euismod',
      'icon': Icons.camera_alt_outlined,
    },
    {
      'title': 'Help Lorem ipsum 02',
      'subtitle':
          'Lorem ipsum dolor sit amet adipisicing elit, sed diam nonummy nibh euismod',
      'icon': Icons.camera_alt_outlined,
    },
    {
      'title': 'Help Lorem ipsum 03',
      'subtitle':
          'Lorem ipsum dolor sit amet adipisicing elit, sed diam nonummy nibh euismod',
      'icon': Icons.camera_alt_outlined,
    },
    {
      'title': 'Help Lorem ipsum 04',
      'subtitle':
          'Lorem ipsum dolor sit amet adipisicing elit, sed diam nonummy nibh euismod',
      'icon': Icons.camera_alt_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2EC8C8),
        title: Text('SEARCH FILTER'),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.more_vert_outlined), onPressed: () {}),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(12.0),

        child: ListView.separated(
          itemCount: dataList.length,
          separatorBuilder: (context, index) => SizedBox(height: 16),

          itemBuilder: (context, index) {
            var item = dataList[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page3();
                }));
              },
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.black12,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),

                child: Row(
                  children: [
                    // Icon Box
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF2EC8C8).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        item['icon'],
                        color: Color(0xFF2EC8C8),
                        size: 30,
                      ),
                    ),

                    SizedBox(width: 14),

                    // Title dan Subtitle
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            item['subtitle'],
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
