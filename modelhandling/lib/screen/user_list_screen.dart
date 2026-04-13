import 'package:flutter/material.dart';
import 'package:modelhandling/controller/user_controller.dart';
import 'package:modelhandling/model/user_model.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  final controller = UserController();
  List<User> users = [];
  final nameConrtoller = TextEditingController();
  final emailController = TextEditingController();

  // load user
  void loadUser() async {
    final userdata = await controller.getUsers();
    setState(() {
      users = userdata;
    });
  }

  // add user
  void addUser() async {
    if(nameConrtoller.text.isEmpty || emailController.text.isEmpty) 
    {
    return;
  }
  final userdata = User(name: nameConrtoller.text, email: emailController.text);
  await controller.addUser(userdata);
  nameConrtoller.clear();
  emailController.clear();
  loadUser();
  }

  // delete user
  void deleteUser(int id) async {
    await controller.deleteUser(id);
    loadUser();
  }

  @override
  void initState() {
    super.initState();
    loadUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // form
          TextField(controller: nameConrtoller, decoration: const InputDecoration(hintText: 'Name')),
          TextField(controller: emailController, decoration: const InputDecoration(hintText: 'Email')),
          ElevatedButton(onPressed: (){
            addUser();
          }, child: Text('Add User')),

          // display our user
          Expanded(child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final listuser = users[index];
              return ListTile(
                title: Text(listuser.name),
                subtitle: Text(listuser.email),
                trailing: IconButton(onPressed: (){
                  deleteUser(listuser.id!);
                }, icon: const Icon(Icons.delete))
              );
            },
            )
          )
        ]
      )
    );
  }
}