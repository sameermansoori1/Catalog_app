import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name="";
  bool changedbutton=false;
  final _formkey =GlobalKey<FormState>();

  moveToHome(BuildContext context)async{
    if (_formkey.currentState!.validate()) {
      setState(() {
        changedbutton = true;
      });
      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedbutton = false;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/image/hey.png",
                  fit: BoxFit.cover,
                  height: 372,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0 ,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  child: Column(children: [TextFormField( 

                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    validator:(value) {
                      if (value!.isEmpty){
                        return"Username cannot be empty";

                      }
                      return null;

                    },
                    onChanged:(value){
                      name=value;
                      setState(() {

                      });
                    } ,
                  ),



                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",

                      ),
                      validator:(value) {
                        if (value!.isEmpty){
                          return"Password cannot be empty";

                        }
                        else if (value.length<6){
                          return"Password cannot be less than 6 character";

                        }
                        return null;

                      },

                    ),
                    SizedBox(
                      height: 44.0 ,
                    ),

                    Material(
                      borderRadius: BorderRadius.circular(changedbutton?50:8),
                      color: Colors.deepPurple,
                      child: InkWell(


                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changedbutton? 50:144,
                          height: 44,

                          alignment: Alignment.center,
                          child: changedbutton? Icon(Icons.done,color: Colors.white,):
                          Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold
                          ,fontSize: 18),),

                            //shape: changedbutton? BoxShape.circle:BoxShape.rectangle,





                        ),
                      ),
                    ),





                    /*ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(144,44)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    ),*/


                  ],


                  ),
                )

              ],
            ),
          ),
        ));

    /*child: Center(
        child: Text("Login Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent


          ),
        ),
      ),
    );*/
  }
}
