import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Image.network(
              'https://www.onlinelogomaker.com/blog/wp-content/uploads/2017/09/fashion-logo-design.jpg',
              width: 200,
              height: 160,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome!',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'please login and continue our app',
              style: TextStyle(
                color: Color.fromARGB(255, 117, 116, 116),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Email',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Password',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                TextField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Perform login logic here
                // For this example, let's directly navigate to SecondPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                primary: const Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Successful!'),
        backgroundColor: Colors.white, // Set background color to white
        elevation: 0, // Set elevation to 0
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Align to the top
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 150), // Add extra spacing from the top
          Container(
            width: 200,
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://i.pinimg.com/564x/04/e6/b0/04e6b0b902059691182aa45c2de5a9f6.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Center(
            child: Text(
              'Successful!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(
              height: 20), // Add spacing between the two text widgets
          const Center(
            child: Text(
              'You have successfully registered', // Add your hint text
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey, // You can set the color to your preference
              ),
            ),
          ),
          const SizedBox(height: 40), // Increase spacing before the button
          Container(
            width: 300, // Increase button width
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                // Add functionality for the button click here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Set button color to black
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(30.0), // Set rounded corners
                ),
              ),
              child: Text(
                'Start Shopping',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
