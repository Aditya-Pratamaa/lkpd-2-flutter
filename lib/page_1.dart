import 'package:flutter/material.dart';
import 'package:lkpd_2/page_2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2EC8C8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.center,
            child: Icon(Icons.favorite_border, size: 90, color: Colors.white),
          ),

          SizedBox(height: 10),

          Align(
            alignment: Alignment.center,
            child: Text(
              "APP NAME",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
          ),

          SizedBox(height: 60),

          // USERNAME
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 260,
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.15),

                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.white),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1.3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1.5),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 18),

          // PASSWORD
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 260,
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.15),

                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.white),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1.3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1.5),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 18),

          // BUTTON LOGIN
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 260,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Color(0xFF2EC8C8),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
