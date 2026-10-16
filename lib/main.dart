
import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'widgets/app_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Profile Card',
      theme: AppTheme.lightTheme,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const double d = 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Profile Card'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8 + d),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16 + d),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: (40 + (2 * d)) / 2,
                    child: const Icon(
                      Icons.person,
                      size: 28,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text('Deswinta Dwi Putri'),
                  const SizedBox(height: 10),
                  const Text('NIM: 20240801222'),
                  const SizedBox(height: 8),
                  const Text(
                    'Program Studi: Teknik Informatika',
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Saya adalah mahasiswa Teknik Informatika '
                        'yang memiliki hobi membaca dan tertarik '
                        'mempelajari teknologi serta pengembangan aplikasi.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const AppButton(
                    label: 'Kunjungi GitHub Saya',
                    icon: Icons.code,
                    url: 'https://github.com/USERNAME_KAMU',
                    height: 42,
                    borderRadius: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}