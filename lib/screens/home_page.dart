import 'package:flutter/material.dart';
import 'login_page.dart'; // Import the login page for logout navigation

class CustomColors {
  static const Color orange =
      Color(0xFFFF7A00); // Orange color based on the picture
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text("LaksaGo"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout), // Log Out button in AppBar
            tooltip: "Log Out",
            onPressed: () {
              // Navigate back to Login Page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),

      // Log Out Button at Bottom
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(
          icon: const Icon(Icons.logout, color: Colors.white),
          label: const Text("Log Out",
              style: TextStyle(fontSize: 16, color: Colors.white)),
          style: ElevatedButton.styleFrom(
            backgroundColor: CustomColors.orange, // Use the custom orange color
            minimumSize: const Size(double.infinity, 50), // Full width button
          ),
          onPressed: () {
            // Navigate back to Login Page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const DashboardCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: const Color.fromARGB(255, 255, 119, 0),
        elevation: 4,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Distribute space evenly
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Icon(icon,
                    size: 50,
                    color: const Color.fromARGB(
                        255, 255, 255, 255)), // Orange icon centered
              ),
            ),
            Container(
              width: double
                  .infinity, // Make the container width the same as the card width
              padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8), // Increased padding for larger title box
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 255, 250, 246), // White background for the title
                border: Border.all(color: Colors.black12), // Optional border
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Black text color
                  fontSize: 18, // Increased font size for the title
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
