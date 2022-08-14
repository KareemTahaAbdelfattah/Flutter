import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/shared/components/components.dart';

class loginscreen extends StatefulWidget
{

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  var emailaddress = TextEditingController();

  var Password = TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'Flutter Application',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            print('Notifications');
          }, icon: Icon(Icons.notification_important),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment : CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    controller: emailaddress,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'Email address is not valid';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: Password,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPassword,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'Password is not valid';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            isPassword = !isPassword;
                          });
                      }, icon: Icon(
                        isPassword ? Icons.visibility : Icons.visibility_off,
                      ),),
                      border: OutlineInputBorder(),
                      ),
                    ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultButton(text: 'login', function: (){
                    if(formkey.currentState!.validate()){
                      print(emailaddress.text);
                      print(Password.text);
                    }
                  }),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(onPressed: (){
                        print('You haven\'t an account');
                      },
                        child: Text(
                          'Register',
                        ), ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


