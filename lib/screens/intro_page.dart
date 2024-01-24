import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 241, 252),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset('lib/images/bow.png',
              height: 450,
              width: 450,
              ),
            ),
            const Text('SWEET ESCAPE',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'Sarina',
                fontSize: 23,
                 shadows: [
                    Shadow(
                      color: Color.fromARGB(255, 161, 149, 160),
                      offset: Offset(2, 2),
                      blurRadius: 4,
                   ),
                 ],
              ),
            ),

            const Spacer(),

            // get started button
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(160),
                  color: const Color.fromARGB(255, 247, 119, 172),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 79, 78, 79).withOpacity(0.2), 
                      spreadRadius: 2, 
                      blurRadius: 4, 
                      offset: Offset(2, 5)
                   ),
                 ],
               ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  ),
                ),
              ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}