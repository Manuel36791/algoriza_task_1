import 'package:algoriza_task_1/constants/constants.dart';
import 'package:algoriza_task_1/widgets/material_button.dart';
import 'package:flutter/material.dart';

class SecondSplashScreen extends StatelessWidget {
  const SecondSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialBtn(
                  label: 'Skip',
                  textColor: Colors.black,
                  color: Colors.amber[50],
                  radius: 20.0,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              '7Krave',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/order.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              secondSplashScreenHeading,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              secondSplashScreenBody,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Container(
                  height: 2.0,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: const SizedBox(
                    height: 0.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const MaterialBtn(
              label: 'Get Started',
              width: double.infinity,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account? '),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
