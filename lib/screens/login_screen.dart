import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtConUser = TextEditingController();
    TextEditingController txtConPass = TextEditingController();

    final txtUser = TextField(
      decoration: const InputDecoration(border: OutlineInputBorder()),
      controller: txtConUser,
    );

    final txtPass = TextField(
      decoration: const InputDecoration(border: OutlineInputBorder()),
      controller: txtConPass,
      obscureText: true,
    );

    final imgLogo = Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://img2.freepng.es/20180514/gre/kisspng-computer-icons-avatar-user-profile-clip-art-5af95fab3b2d13.0220186015262923952424.jpg')),
      ),
    );

    final btnEntrar = FloatingActionButton.extended(
        icon: const Icon(Icons.login),
        label: const Text('INGRESAR'),
        onPressed: () {
          Navigator.pushNamed(context, '/dash');
        });

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: .9,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://i.pinimg.com/564x/62/c2/30/62c230e25c6239c33d2954641b9f5467.jpg')),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 200,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(222, 17, 46, 190)),
                //color: Colors.blueGrey,
                child: Column(
                    children: [txtUser, const SizedBox(height: 10), txtPass]),
              ),
              Container(
                  padding: const EdgeInsets.only(bottom: 200), child: imgLogo)
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: btnEntrar,
    );
  }
}
