import 'package:flutter/material.dart';
import 'package:mobile8_project2/screens/signup_screen.dart ';


class Registration extends StatefulWidget {
  Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: Container (child: Image(
                  image: AssetImage('assets/images/imageForRegistrationScreen.jpg'), height: 200),),
            ),
            const SizedBox(
              height: 12,
            ),
            Center(
              child: Text(
                "SportChat",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Center(
              child: Text(
                "Узнавайте о спортивных турнирах в вашем городе, "
                    "\nнаходите единомышленников, "
                    "\nобщайтесь с другими спортсменами",  textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700,),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(10.0),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                minimumSize: MaterialStateProperty.all(Size(100, 50)),
              ),
              child: Text("Зарегистрироваться"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupScreen(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 36,
            ),
          ],
        ),
      ),
    );
  }
}