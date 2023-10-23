import 'package:flutter/material.dart';

void main() {
  runApp(Validate());
}

class Validate extends StatelessWidget {
  const Validate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Validation'),
        ),
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget{


  @override
  State<MyForm> createState() => MyFormState();
}

class MyFormState extends State<MyForm>{

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
          child: TextFormField(
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please Enter Value';
              };
              return null;
            },
            decoration: InputDecoration(
              hintText: 'Enter Name'
            ),
          ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          child: TextFormField(
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please Enter Email';
              };
              return null;
            },
            decoration: InputDecoration(
              hintText: 'Enter Email'
            ),
          ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          child: TextFormField(
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please Enter Password';
              };
              return null;
            },
            decoration: InputDecoration(
              hintText: 'Enter Password'
            ),
          ),
          ),


          ElevatedButton(onPressed: (){
            if(formKey.currentState!.validate()){}
          }, child: Text('Click'))
        ],
      ),

    );
  }
}
