import 'package:cooksoc/core/components/button.dart';
import 'package:cooksoc/features/auth/notifiers/auth_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController? _emailController;
  TextEditingController? _nameController;

  @override
  void dispose() {
    _emailController?.dispose();
    _nameController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, watch, Widget? child) {
        final user = watch(authProvider).user;
        final provider = watch(authProvider.notifier);

        if (user == null) return Center(child: CircularProgressIndicator());

        _emailController ??= TextEditingController(text: user.email);
        _nameController ??= TextEditingController(text: user.name);

        return Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
                controller: _emailController,
                enabled: false,
              ),
              Button(
                padding: EdgeInsets.symmetric(vertical: 8),
                text: 'Sign Out',
                onTap: provider.signOut,
              ),
              Button(
                padding: EdgeInsets.symmetric(vertical: 8),
                text: 'Delete Account',
                onTap: provider.deleteAccount,
              ),
              Spacer(),
              AboutListTile(),
            ],
          ),
        );
      },
    );
  }
}
