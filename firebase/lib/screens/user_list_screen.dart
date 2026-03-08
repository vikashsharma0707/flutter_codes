import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../services/firebase_service.dart';
import 'add_user_screen.dart';

class UserListScreen extends StatelessWidget {
  final FirestoreService _firestoreService = FirestoreService();

  void deleteUser(BuildContext context, String id) {
    _firestoreService.deleteUser(id);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("User deleted"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Firebase CRUD")),
      body: StreamBuilder<List<UserModel>>(
        stream: _firestoreService.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (_, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => AddUserScreen(user: user),
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => deleteUser(context, user.id),
                      ),
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Error loading users"));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => AddUserScreen()));
        },
      ),
    );
  }
}
