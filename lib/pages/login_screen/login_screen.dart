import 'package:algoriza_task_1/widgets/material_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Image.asset(
            'assets/images/background.jpg',
          ),
          Container(
            // color: Colors.white,
            //height: MediaQuery.of(context).size.height * 0.7,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Welcome to Fashon Daily',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Sign in',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'Phone number',
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(children: [
                    CountryCodePicker(
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'EG',
                      favorite: ['EG', 'SA'],
                      // optional. Shows only country name and flag
                      showCountryOnly: false,
                      // optional. Shows only country name and flag when popup is closed.
                      showOnlyCountryWhenClosed: false,
                      // optional. aligns the flag and the Text left
                      alignLeft: false,
                    ),
                  ]),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const MaterialBtn(
                    label: 'Sign In',
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Center(
                    child: Text('Or'),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(
                      15.0,
                    ),
                    padding: const EdgeInsets.all(
                      5.0,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(
                          5.0,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          height: 30.0,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Text('Sign in with google'),
                        )
                      ],
                    ),
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
                          'Register here',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                      'Use the application according to policy rules. Any kinds of violations will by subject to sancrions.')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
