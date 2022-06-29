import 'package:algoriza_task_1/pages/register_screen/register_screen.dart';
import 'package:algoriza_task_1/widgets/material_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/001/590/621/non_2x/simple-geometric-dark-background-with=small-element-free-vector-jpg',
              //fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Welcome to Fashon Daily',
                          ),
                          const SizedBox(height: 10.0),
                          Text('Sign in',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  )),
                          const SizedBox(height: 15.0),
                          const Text(
                            'Phone Number',
                          ),
                          const SizedBox(height: 10.0),
                          IntlPhoneField(
                            decoration: const InputDecoration(
                              labelText: 'Phone Number',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                            ),
                            initialCountryCode: 'EG',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          ),
                          const SizedBox(height: 15.0),
                          const MaterialBtn(
                            label: 'Sign In',
                            width: double.infinity,
                            color: Colors.blue,
                          ),
                          const SizedBox(height: 10.0),
                          const Center(
                            child: Text('Or'),
                          ),
                          const SizedBox(height: 10.0),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                primary: Colors.blue,
                                side: const BorderSide(
                                  color: Colors.blue,
                                )),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    MdiIcons.google,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text('Sign in with google')
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Don\'t have an account? '),
                              TextButton(
                                onPressed: () {
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen(),
                                  );
                                },
                                child: const Text(
                                  'Register here',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            'Use the application according to policy rules. Any kinds of violations will by subject to sancrions.',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
