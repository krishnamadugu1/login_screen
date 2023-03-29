import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // getImage('nabnsm'),
              Image.asset(
                "images/top_image.png",
                fit: BoxFit.cover,
                scale: 2,
              ),
              const SizedBox(
                height: 38.0,
              ),
              Text(
                "Welcome",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Color(0xff242424),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // style: TextStyle(
                //   color: Color(0xff242424),
                //   fontSize: 24.0,
                // ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              Text(
                "Please enter your account details",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Color(0xff95919B),
                    fontSize: 16.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(27.0),
                    borderSide: const BorderSide(
                      color: Color(0xffDDD9E3),
                    ),
                  ),
                  hintText: "Email",
                  hintStyle: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                      fontSize: 15.0,
                      color: Color(0xff95919B),
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(27.0),
                    borderSide: const BorderSide(
                      color: Color(0xffDDD9E3),
                    ),
                  ),
                  hintText: "Password",
                  hintStyle: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                      fontSize: 15.0,
                      color: Color(0xff95919B),
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.black,
                  ),
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text("Forgot Password?",
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 13.0,
                      color: Color(0xffFF0037),
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(
                height: 55.0,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        return const Color(0xffFF0037);
                      },
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: GoogleFonts.sourceSansPro(
                      textStyle: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    WidgetSpan(
                      child: SizedBox(width: 5.0),
                    ),
                    TextSpan(
                      text: "RegisterNow",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xffFF0037),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
