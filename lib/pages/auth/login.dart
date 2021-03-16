import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/widgets.dart';

class Login extends StatefulWidget {

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  bool hidepassword = true;
  final _formKey = GlobalKey<FormState>();

  void _togglePasswordStatus() {
    setState(() {
      hidepassword = !hidepassword;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          )
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Container(
                    width: size.width * 0.6,
                    child: Image.asset('assets/images/logo-dark.png'),
                    alignment: Alignment.center,
                  ),
                  // child: Text('New Account', style: TextStyle(color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold ) ),
                )
              ),
              Container (
                width: size.width * 0.8,
                child: Text("Login", style: TextStyle( fontSize: 20, fontWeight: FontWeight.w600 )),
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InputTextField( 
                      icon: Icon(Icons.mail_outline, color: Colors.black87), 
                      hint: 'Email address',
                      type: TextInputType.emailAddress,
                      action: TextInputAction.next,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric( vertical : 10 ),
                      child: Container(
                        width: size.width * 0.9,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child: TextFormField(
                            decoration: InputDecoration( 
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.lock, color: Colors.black87),
                              hintText: 'Password',
                              suffixIcon:  IconButton(
                                icon:Icon(hidepassword ? Icons.visibility:Icons.visibility_off,),
                                onPressed: _togglePasswordStatus,
                                color: Colors.black87,
                              ),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter password';
                              }
                              return null;
                            },
                            obscureText: hidepassword,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      )
                    ),
                    GestureDetector(
                      onTap: () => { Navigator.pushNamed(context, 'ForgetPassword') },
                      child: Text('Forget password'),
                    ), 
                    SizedBox( height: 20 ),
                    RoundedButton( buttonname: "Login", onPressed: ()=>{
                            // otherwise.
                      if (_formKey.currentState.validate()) {
                        // If the form is valid, display a Snackbar.
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')))
                      }
                    }),        
                    SizedBox( height: 20 ),
                  ],
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () => { Navigator.pushNamed(context, 'Register') },
                  child: Text( "Create New Account" ),
                ), 
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1)) 
                ),
              ),
              SizedBox( height: 20 ),

            ],
          )
        )
      ],
    );
  }
}
