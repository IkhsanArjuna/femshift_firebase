import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.53,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.1,
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.22),
               
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                 
                  child: Stack(
                    children: [
                      Positioned(
                        right: MediaQuery.of(context).size.width * 0.1,
                        top: MediaQuery.of(context).size.height * 0.07,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: const BoxDecoration(),
                          child: const ButtonCustomAuthWidget(
                            name: "Get Started",
                            route: LoginPage(),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class ButtonCustomAuthWidget extends StatelessWidget {
  final String name;
  final Widget route;
  const ButtonCustomAuthWidget(
      {super.key, required this.name, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            side: WidgetStatePropertyAll(BorderSide(color: Colors.white)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)))),
            backgroundColor:
                WidgetStatePropertyAll(Color.fromRGBO(47, 128, 237, 1))),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => route,
              ));
        },
        child: Text(
          name,
          style: GoogleFonts.nunito(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
        ));
  }
}
