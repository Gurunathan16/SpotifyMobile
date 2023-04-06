import 'package:flutter/material.dart';
import 'package:spotify/const/colors.dart';
import 'package:spotify/view/Login/loginpage.dart';
import 'package:spotify/view/Signup/signup.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/gett.png'), fit: BoxFit.cover),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 70, child: Image.asset('assets/logo2.png')),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Millions of songs.\n Free on SPOTIFY ',
                style: TextStyle(
                  color: ColorConstants.starterWhite,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 35,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                height: 65,
                color: ColorConstants.primaryColor,
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUp())),
                child: const Text(
                  'Sign up free',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                height: 45,
                color: Colors.transparent,
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage())),
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
      ),
    );
  }
}
