import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Color myColor;
  late Size mediaSize;
  bool isRememberMeChecked = false; // Variable para el estado del checkbox

  @override
  Widget build(BuildContext context) {
    // Variables del sistema
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: myColor,
        image: DecorationImage(
          image: const AssetImage('assets/imagen1.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              myColor.withOpacity(0.2), BlendMode.darken),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              top: 80,
              child: _construirTop(),
            ),
            Positioned(
              bottom: 0,
              child: _construirBottom(),
            ),
          ],
        ),
      ),
    );
  }

  // Parte superior
  Widget _construirTop() {
    return SizedBox(
      width: mediaSize.width,
      child: const Column(
        children: [
          Icon(
            Icons.location_on,
            size: 100,
            color: Colors.white,
          ),
          Text(
            'GO MAP',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }

  // Parte inferior
  Widget _construirBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _construirForm(),
        ),
      ),
    );
  }

  // Formulario
  Widget _construirForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Welcome',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Please login with your information',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20),
        // Campo de correo
        const TextField(
          decoration: InputDecoration(
            labelText: 'Email address',
            prefixIcon: Icon(Icons.email, color: Colors.purple),
            border: UnderlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        // Campo de contraseña
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock, color: Colors.purple),
            suffixIcon: Icon(Icons.visibility, color: Colors.grey),
            border: UnderlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),
        // Recordar contraseña y olvidar contraseña
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: isRememberMeChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isRememberMeChecked = value ?? false;
                    });
                  },
                ),
                const Text('Remember me'),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'I forgot my password',
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        // Botón de login
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            onPressed: () {},
            child: const Text(
              'LOGIN',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Center(
          child: Text(
            'Or Login with',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Facebook Icon
            IconButton(
              icon: const Icon(FontAwesomeIcons.facebook, size: 40, color: Colors.blue),
              onPressed: () {},
            ),
            // Twitter (X) Icon
            IconButton(
              icon: const Icon(FontAwesomeIcons.xTwitter, size: 40, color: Colors.lightBlue),
              onPressed: () {},
            ),
            // GitHub Icon
            IconButton(
              icon: const Icon(FontAwesomeIcons.github, size: 40, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
