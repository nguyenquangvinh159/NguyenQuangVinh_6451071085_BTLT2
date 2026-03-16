import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../widgets/profile_avatar.dart';
import '../utils/constants.dart';

class ProfileView extends StatelessWidget {

  final UserModel user = UserModel(
    name: "Nguyen Lan Huong",
    email: "lanhuong.nguyen@example.com",
    avatar: AppConstants.defaultAvatar,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ProfileAvatar(imageUrl: user.avatar),

            SizedBox(height: 20),

            Text(
              user.name,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8),

            Text(
              user.email,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Text("Edit Profile"),
            )

          ],
        ),
      ),
    );
  }
}