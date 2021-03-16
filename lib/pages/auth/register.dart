import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/widgets.dart';

class Register extends StatefulWidget {

  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  bool hidepassword = true;

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
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(height: 100),
                Flexible(
                  child: Center(
                    child: Container(
                      width: size.width * 0.6,
                      child: Image.asset('assets/images/logo-dark.png'),
                      alignment: Alignment.center,
                    )
                    // child: Text('New Account', style: TextStyle(color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold ) ),
                  )
                ),
                SizedBox(height: 35),
                Container (
                  width: size.width * 0.8,
                  child: Text("Register", style: TextStyle( fontSize: 20, fontWeight: FontWeight.w600 )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InputTextField( 
                      icon: Icon(Icons.person, color: Colors.black87), 
                      hint: 'Username',
                      type: TextInputType.name,
                      action: TextInputAction.next,
                    ),
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
                          child: TextField(
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
                            obscureText: hidepassword,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      )
                    ),
                    SizedBox( height: 20 ),
                    RoundedButton( buttonname: "Register" ),        
                    SizedBox( height: 20 ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text( "Already have an account?" ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () => { Navigator.pushNamed(context, '/') },
                      child: Container(
                        child: Text( "Login" ),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1) )
                        ),
                      ),
                    ), 
                  ],
                ),
                SizedBox( height: 20 ),
              ],
            )
          )
        )
      ],
    );
  }
}
