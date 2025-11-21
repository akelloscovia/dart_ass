import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            buildPage(
              image: 'assets/IMG-3.jpg',
              title: 'Welcome to our App,Hilltop Junior School,Kasangati',
              description: 'The app features audio-visual content, progress tracking, and personalized learning paths to engage young learners',
            ),
            buildPage(
              image: 'assets/IMG-2.jpg',
              title: 'Stay Organized',
              description: 'Hilltop Junior is offering a comprehensive curriculum,experienced teachers,and state of the art facilities.We aim to develop well rounded individuals equipped for success in their future endeavors.',
            ),
            buildPage(
              image: 'assets./IMG 1.jpg',
              title: 'Achieve our Goals',
              description:'Creating plans and working towards making them happen, its a journey of growth, learning and perseverance,ultimately leading to a sense of accomplishment and fulfillment.'
            ),
          ],
        ),
      ),

      bottomSheet: isLastPage
          ? TextButton(
              onPressed: () {
                // GO TO LOGIN (not home)
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Container(
                width: double.infinity,
                height: 60,
                color: Colors.deepPurple,
                alignment: Alignment.center,
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          : Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text('Skip'),
                    onPressed: () => _controller.jumpToPage(2),
                  ),
                  Row(
                    children: [
                      TextButton(
                        child: Text('Next'),
                        onPressed: () => _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }

  Widget buildPage({
    required String image,
    required String title,
    required String description,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 300),
        SizedBox(height: 30),
        Text(
          title,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.grey[700]),
        ),
      ],
    );
  }
}
