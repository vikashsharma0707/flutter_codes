import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';

class FirestoreService {
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  // Add new user
  Future<void> addUser(String name, String email) async {
    final docRef = usersCollection.doc(); // Firebase auto id
    final user = UserModel(id: docRef.id, name: name, email: email);
    await docRef.set(user.toMap());
  }

  // Update existing user
  Future<void> updateUser(UserModel user) async {
    await usersCollection.doc(user.id).update(user.toMap());
  }

  // Delete user
  Future<void> deleteUser(String id) async {
    await usersCollection.doc(id).delete();
  }

  // Get all users as Stream
  Stream<List<UserModel>> getUsers() {
    return usersCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return UserModel.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }
}
