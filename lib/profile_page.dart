import 'package:flutter/material.dart';
import 'package:sad/Widgets/input_field.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String name = " ";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"), backgroundColor: Colors.black12),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Card(
            color: Colors.blueGrey[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      //keyboardType: TextInputType.visiblePassword,

                      //obscureText: true, //to hide password
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Field is Empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Enter Name",

                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InputField(
                      controller: passController,
                      keyboardType: TextInputType.visiblePassword,
                      label: "Password",
                      hint: "Enter Password",

                      icon: Icons.lock,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Field is Empty";
                        } else if (!RegExp(
                          r'[A-Za-z .]{3,}$',
                        ).hasMatch(value)) {
                          return 'Invalid Format!!';
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        name = nameController.text;
                        setState(() {
                          if (_formKey.currentState!.validate()) {
                            name = nameController.text;
                          }
                        });
                      },
                      child: Text("Submit"),
                    ),
                    SizedBox(height: 20),
                    Text("Name is : $name "),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
