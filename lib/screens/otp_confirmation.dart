import 'package:demo/constant.dart';
import 'package:demo/homepage.dart';
import 'package:demo/widgets/elevated_button_card.dart';
import 'package:flutter/material.dart';

class OTPConfirmation extends StatefulWidget {
  const OTPConfirmation({Key? key}) : super(key: key);

  @override
  State<OTPConfirmation> createState() => _OTPConfirmationState();
}

class _OTPConfirmationState extends State<OTPConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 250,
              ),
              const Text(
                'WE SEND YOU OPT ON +91-9310289273',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: Text(
                'ENTER OTP',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: const [
                    OTPCard(),
                    OTPCard(),
                    OTPCard(),
                    OTPCard(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ConstrainedBox(
                constraints:
                    const BoxConstraints.tightFor(width: 310, height: 50),
                child: ElevatedButtonCard(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  title: 'CONFIRM',
                  color: tElevatedColor,
                ),
              ),
              const SizedBox(height: 17,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                    Text(
                        'Resend',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      Text(
                        'OTP',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff7E00FC),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  const Text('01:59 Min'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OTPCard extends StatelessWidget {
  const OTPCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const TextField(),
      ),
    );
  }
}
