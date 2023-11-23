import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  final String usernameHint;
  final String emailHint;
  final String passwordHint;
  final String confirmPasswordHint;

  SignUpPage({
    this.usernameHint = 'User Name',
    this.emailHint = 'Email',
    this.passwordHint = 'Password',
    this.confirmPasswordHint = 'Confirm Password',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.network(
              'https://www.onlinelogomaker.com/blog/wp-content/uploads/2017/09/fashion-logo-design.jpg',
              width: 200,
              height: 160,
            ),
          ),
          const Positioned(
            top: 200,
            left: 16,
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 27,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const Positioned(
            top: 240,
            left: 16,
            child: Text(
              'Create a new account',
              style: TextStyle(
                  color: Color.fromARGB(218, 109, 109, 109),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            top: 300,
            left: 16,
            right: 16,
            child: SignUpForm(
              usernameHint: usernameHint,
              emailHint: emailHint,
              passwordHint: passwordHint,
              confirmPasswordHint: confirmPasswordHint,
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  final String usernameHint;
  final String emailHint;
  final String passwordHint;
  final String confirmPasswordHint;

  SignUpForm({
    required this.usernameHint,
    required this.emailHint,
    required this.passwordHint,
    required this.confirmPasswordHint,
  });

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. ${widget.usernameHint}',
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: widget.usernameHint,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '2. ${widget.emailHint}',
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: widget.emailHint,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '3. ${widget.passwordHint}',
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                TextField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: widget.passwordHint,
                    focusedBorder: const UnderlineInputBorder(
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
          ],
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '4. ${widget.confirmPasswordHint}',
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                TextField(
                  controller: _confirmPasswordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: widget.confirmPasswordHint,
                    focusedBorder: const UnderlineInputBorder(
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
          ],
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            print('Username: ${_nameController.text}');
            print('Email: ${_emailController.text}');
            print('Password: ${_passwordController.text}');
            print('Confirm Password: ${_confirmPasswordController.text}');

            // Burada SignUp butonuna basıldığında yeni sayfayı açmak için Navigator'ı kullanıyoruz.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
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
            'Sign Up',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
