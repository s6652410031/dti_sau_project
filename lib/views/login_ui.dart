import 'package:flutter/material.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 50.0,
          right: 50.0,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children to the start
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: MediaQuery.of(context).size.height * 0.075,
                ),
              ),
              SizedBox(
                  height: 20), // Add some space between the icon and the logo
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
              SizedBox(
                  height: 20), // Add some space between the logo and the text
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome back,',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                  height: 10), // Add some space between the two text widgets
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Make it work, make it right, make it fast',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.018,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              // Email TextField
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.person_2_outlined),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              // Password TextField
              TextField(
                obscureText: true, // Hide password input
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility), // Show/hide password icon
                  hintText: 'Password',
                  prefixIcon:
                      Icon(Icons.lock), // Changed to lock icon for password
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              // Forgot Password Button
              Align(
                alignment: Alignment.centerRight, // Align to the right
                child: TextButton(
                  onPressed: () {
                    // Handle forgot password logic here
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors
                        .white, // Corrected 'colors.white' to 'Colors.white'
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height * 0.065,
                  ),
                  shape: RoundedRectangleBorder(
                    // Corrected 'Shape' to 'shape'
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height *
                      0.025), // Space before OR
              Text(
                'OR',
                textAlign: TextAlign.center, // Center the OR text
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center the row
                    children: [
                      Image.asset(
                        'assets/images/googlelogo.png',
                        width: 20.0,
                      ),
                      SizedBox(width: 10), // Space between the icon and text
                      Text(
                        'Sign-in with Google',
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      borderRadius: BorderRadius.circular(5.0)),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height * 0.065,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
