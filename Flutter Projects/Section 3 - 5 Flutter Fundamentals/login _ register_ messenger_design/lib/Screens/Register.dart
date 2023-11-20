import 'package:flutter/material.dart';
import 'package:login_design/Components/components.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  var emailcontrolar = TextEditingController();

  var passwordcontrolar = TextEditingController();

  GlobalKey<FormState> formkey =GlobalKey();

  bool isloading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 25,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Customformfaild(controller: emailcontrolar,
                  labeltext:'Email Address' ,
                  prefix:Icon(Icons.email),
                  type: TextInputType.emailAddress,

                  validate:((value) {
                    if(value!.isEmpty){
                      return 'Email must not be empty';
                    }
                    return null ;
                  }
                  ) ,),
                  SizedBox(
                    height: 15.0,
                  ),
                 
                  Customformfaild(controller: passwordcontrolar,
                  labeltext:'Password' ,
                  prefix:Icon(Icons.lock),
                  type: TextInputType.visiblePassword,
                  suffixIcon: (){
                    SetState(){
                      isloading =!isloading;
                    }
                  },
                  validate:((value) {
                    if(value!.isEmpty){
                      return 'Password must not be empty';
                    }
                    return null ;
                  }
                  ) ,),
                  SizedBox(
                    height: 15.0,
                  ),
                  CustomButton(
                    function: () {},
                    text: 'Login',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Login Now',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ))
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
