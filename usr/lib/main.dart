import 'package:flutter/material.dart';

void main() {
  runApp(const KaidarGyaraBidiyo());
}

class KaidarGyaraBidiyo extends StatelessWidget {
  const KaidarGyaraBidiyo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manhajar Gyara Bidiyo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ShafinGyaraBidiyo(title: 'Gyara Bidiyo'),
      },
    );
  }
}

class ShafinGyaraBidiyo extends StatefulWidget {
  const ShafinGyaraBidiyo({super.key, required this.title});

  final String title;

  @override
  State<ShafinGyaraBidiyo> createState() => _ShafinGyaraBidiyoState();
}

class _ShafinGyaraBidiyoState extends State<ShafinGyaraBidiyo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.video_library,
              size: 100,
              color: Colors.grey,
            ),
            const SizedBox(height: 20),
            const Text(
              'Babu bidiyon da aka zaba tukuna.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Action to select video
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Ana shirin zabar bidiyo...')),
                );
              },
              icon: const Icon(Icons.add_a_photo),
              label: const Text('Zabi Bidiyo don Gyarawa'),
            ),
          ],
        ),
      ),
    );
  }
}
