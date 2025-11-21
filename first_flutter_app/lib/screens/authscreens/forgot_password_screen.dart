import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color navyBlue = Theme.of(context).primaryColor;
    Color gold = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      body: FadeTransition(
        opacity: _animation,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 🏫 School Logo (Replace with your logo asset)
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: gold.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/school_logo.png', // <- Replace this path with your logo file
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: navyBlue,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Enter your email to reset your password',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700]),
                  ),

                  SizedBox(height: 30),

                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Enter your email',
                            prefixIcon: Icon(Icons.email, color: gold),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        // Send Reset Link Button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: gold,
                            foregroundColor: navyBlue,
                            minimumSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text('Password reset link sent to your email!'),
                              ),
                            );
                          },
                          child: Text(
                            'Send Reset Link',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),

                        SizedBox(height: 20),

                        // 🔙 Back to Login Button
                        TextButton.icon(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                          icon: Icon(Icons.arrow_back, color: navyBlue),
                          label: Text(
                            'Back to Login',
                            style: TextStyle(
                              color: navyBlue,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
