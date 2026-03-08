import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../services/firebase_service.dart';

class AddUserScreen extends StatefulWidget {
  final UserModel? user;

  const AddUserScreen({Key? key, this.user}) : super(key: key);

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final FirestoreService _firestoreService = FirestoreService();

  @override
  void initState() {
    super.initState();
    if (widget.user != null) {
      nameController.text = widget.user!.name;
      emailController.text = widget.user!.email;
    }
  }

  void saveUser() async {
    final name = nameController.text.trim();
    final email = emailController.text.trim();

    if (name.isEmpty || email.isEmpty) return;

    if (widget.user == null) {
      await _firestoreService.addUser(name, email);
    } else {
      final updatedUser =
          UserModel(id: widget.user!.id, name: name, email: email);
      await _firestoreService.updateUser(updatedUser);
    }

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.user == null ? 'Add User' : 'Edit User')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: saveUser,
              child: Text(widget.user == null ? 'Add User' : 'Update User'),
            ),
          ],
        ),
      ),
    );
  }
}
