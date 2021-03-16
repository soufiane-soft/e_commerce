import 'package:e_commerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {

  @override
  ForgetPasswordState createState() => ForgetPasswordState();
}

class ForgetPasswordState extends State<ForgetPassword> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () => { Navigator.pop(context) },
              icon: Icon( Icons.chevron_left , color: Colors.black87,),
            ),
            title: Text('Forget Password', style: TextStyle( color: Colors.black87 ),),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.1),
                    Container(
                      width: size.width * 0.8,
                      child: Text('Enter your email, we well send instractions to reset your password'),
                    ),
                    SizedBox(height: 25),
                    InputTextField( 
                      icon: Icon(Icons.mail_outline, color: Colors.black87), 
                      hint: 'Email address',
                      type: TextInputType.emailAddress,
                      action: TextInputAction.done,
                    ),
                    RoundedButton(buttonname: "Send"),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}