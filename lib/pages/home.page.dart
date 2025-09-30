import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/login.page.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

           
      
      body: Container(

        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.grey[700]!,Colors.grey[900]!,Colors.grey[900]!,Colors.grey[900]!,Colors.grey[900]!,Colors.grey[900]!, Colors.grey[900]!])
        ),
       
        child: Column(children: <Widget>[

              new SizedBox(
                height: 200,
              ),

              Image.asset(
                'assets/images/logo.png',
                width: 100,
              ),

                 new SizedBox(
                height: 100,
              ),

                const Text(
                  'Milhões de músicas à sua escolha.\n Grátis no Spotify',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                   new SizedBox(
                height: 80,
              ),

              SizedBox(
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'INSCREVA-SE GRÁTIS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

                new SizedBox(
                height: 20,
              ),

              SizedBox(
                width: 250,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'CONTINUAR COM O FACEBOOK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              
    new SizedBox(
                height: 10,
              ),

              SizedBox(
                width: 250,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: const Text(
                    'ENTRAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),


        ],)
      ),
      
    );
  }
}

