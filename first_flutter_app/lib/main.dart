
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Card',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFF03D321,
          <int, Color>{
            50: Color(0xFFE0F2F1),
            100: Color(0xFFB2DFDB),
            200: Color(0xFF80CBC4),
            300: Color(0xFF4DB6AC),
            400: Color(0xFF26A69A),
            500: Color(0xFF03D321),
            600: Color(0xFF03D321),
            700: Color(0xFF03D321),
            800: Color(0xFF03D321),
            900: Color(0xFF03D321),
          },
        ),
      ),
      home: const ProfileCardPage(),
    );
  }
}

class ProfileCardPage extends StatelessWidget {
  const ProfileCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        title: const Text('Profile Card'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Center(
        child: ProfileCard(),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Picture
            const CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage(
                'assets/images/sher5.jpg',
              ),
            ),
            const SizedBox(height: 12),

            // Name
            const Text(
              'Emaru Scovia',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            // Title
            const SizedBox(height: 4),
            Text(
              'Mobile Developer',
              style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
            ),

            const Divider(height: 24, thickness: 1),

            // Contact details
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () {
                    // In a real app you might use url_launcher to dial
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Call +256 780740749')),
                    );
                  },
                ),
                const SizedBox(width: 8),
                Text('+256 780740749'),
                const SizedBox(width: 24),
                IconButton(
                  icon: const Icon(Icons.email),
                  onPressed: () {
                    // In a real app you might open the email client
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('akelloscovia907@gmail.com')),
                    );
                  },
                ),
                const SizedBox(width: 8),
                Text('akelloscovia907@gmail.com'),
              ],
            ),

            const SizedBox(height: 12),

            // Optional: social row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.linked_camera),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.web),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
