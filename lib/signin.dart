import 'package:enigma_paradox/booking.dart';
import 'package:enigma_paradox/register.dart';
import 'package:flutter/material.dart';

import 'components/my_button.dart';
import 'components/my_textfield.dart';
import 'components/square_tile.dart';



class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  
  void signUserIn() {}

    void navigateToRegister(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()), 
    );
    }

    void navigateToBooking(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Booking()), 
    );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),

              // logo
              const Icon(
                Icons.rocket,
                size: 100,
              ),

              const SizedBox(height: 10),

             
              Text(
                'Enigma Paradox',
                style: TextStyle(
                  color: Color.fromARGB(255, 44, 160, 127),
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 10),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 5),

              
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 5),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 10),
            
             GestureDetector(
                onTap: () => navigateToBooking(context),
           
              child: Container(
              padding: const EdgeInsets.all(25),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
              color: Color.fromARGB(255, 212, 220, 56),
              borderRadius: BorderRadius.circular(8),
                  ),
               child: const Center(
                 child: Text(
                  "Use Test Mode",
                 style: TextStyle(
                 color: Color.fromARGB(255, 0, 0, 0),
                 fontWeight: FontWeight.bold,
                 fontSize: 16,
                      ),
                     ),
                   ),
                 ),
                ),

              const SizedBox(height: 25),

             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

             
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'assets/google.png'),

                ],
              ),

              const SizedBox(height: 50),

              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () => navigateToRegister(context),
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}