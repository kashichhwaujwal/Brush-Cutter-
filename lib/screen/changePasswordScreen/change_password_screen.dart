import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Password"),
      ),
      body: Column(
        children: [
          ChangePasswordForm(),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('The password should be 4 digits'),
                SizedBox(height: 4),
                Text('The Password Should be numeric'),
                SizedBox(height: 4),
                Text('Do not repeat old password'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Old Password"),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.black12,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text("New Password"),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 3,
                  color: Colors.black12,
                )),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text("Confirm Password"),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 3,
                  color: Colors.black12,
                )),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
