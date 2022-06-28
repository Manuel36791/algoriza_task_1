import 'package:algoriza_task_1/widgets/material_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
          // Image.asset(
          //   'assets/images/background.jpg',
          // ),
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
                    'Register',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text('Email'),
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Phone number',
                  ),
                  const SizedBox(
                    height: 5.0,
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
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(
                          5.0,
                        )),
                    child: CountryCodePicker(
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
                  ),
                  // Row(
                  //   children: [
                  //     CountryCodePicker(
                  //       onChanged: print,
                  //       // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  //       initialSelection: 'EG',
                  //       favorite: ['EG', 'SA'],
                  //       // optional. Shows only country name and flag
                  //       showCountryOnly: false,
                  //       // optional. Shows only country name and flag when popup is closed.
                  //       showOnlyCountryWhenClosed: false,
                  //       // optional. aligns the flag and the Text left
                  //       alignLeft: false,
                  //     ),
                  //     TextField(
                  //       decoration: InputDecoration(
                  //         border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(5.0),
                  //         ),
                  //         hintText: 'Phone',
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text('Password'),
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: 'Password',
                      suffixIcon: const Icon(
                        Icons.remove_red_eye,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const MaterialBtn(
                    label: 'Register',
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
                      Text('Has any account? '),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sing in here',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          'by regestiring your account, you are agree to our '),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'terms and condition',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
