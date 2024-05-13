import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fasum/screens/add_post_screen.dart';
import 'package:fasum/screens/sign_in_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> _posts = []; // List untuk menyimpan postingan

  void _addPost(Map<String, dynamic> post) {
    setState(() {
      _posts.add(post); // Menambahkan postingan baru ke dalam list
    });
  }

  Future<void> _signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SignInScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(
            onPressed: () {
              _signOut(context);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPostScreen()),
          );
          if (result != null) {
            _addPost(result); // Menambahkan postingan ke list saat pengguna membuat postingan baru
          }
        },
        child: const Icon(Icons.add),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 kolom
          crossAxisSpacing: 4.0, // Spasi antar kolom
          mainAxisSpacing: 4.0, // Spasi antar baris
        ),
        itemCount: _posts.length, // Jumlah item dalam list
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(
              _posts[index]['imageUrl'], // URL gambar postingan
              fit: BoxFit.fitWidth, // Mengatur agar gambar tidak terpotong dan tidak terlalu besar
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black.withOpacity(0.5),
              title: Text(_posts[index]['text']), // Teks postingan
            ),
          );
        },
      ),
    );
  }
}
