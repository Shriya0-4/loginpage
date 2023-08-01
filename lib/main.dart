import 'package:flutter/material.dart';
import './navbbar.dart';
import './homescreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          drawer: navbar(),
          appBar:AppBar(
          backgroundColor: Colors.red,

          title:Text('Login Page'),
        ),
            body: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
        children:[
        Text(
          'LOGIN',
            style:TextStyle(
            fontSize:40,
            color:Colors.red,
            fontWeight:FontWeight.bold
          ),
        ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:30),
              child: Form(
                child:Column(
                  children:[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:InputDecoration(
                        labelText:'email',
                        hintText:'Enter email',
                        prefixIcon:Icon(Icons.email),
                        border:OutlineInputBorder(),
                      ),
                        onChanged:(String value){

                        },
                    validator:(value){
                    return value!.isEmpty ? 'please enter email':null;
                    },

                    ),

                    SizedBox(height: 30,),

                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration:InputDecoration(
                        labelText:'password',
                        hintText:'Enter password',
                        prefixIcon:Icon(Icons.password),
                        border:OutlineInputBorder(),
                      ),
                      onChanged:(String value){

                      },
                      validator:(value){
                        return value!.isEmpty ? 'please enter password':null;
                      },

                    ),

                    SizedBox(height: 30,),

                    MaterialButton(
                    onPressed:(){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => homescreen(),),
                      );
                    },
                        child:Text('Login'),
                        color:Colors.red,
                        textColor:Colors.white,
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
