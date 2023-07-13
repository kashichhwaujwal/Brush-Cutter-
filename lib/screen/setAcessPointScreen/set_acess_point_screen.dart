import 'package:flutter/material.dart';

const deviceInfoList = ["Iphone 8", "Samsung a2", "Nokia"];

class SetAccessPointScreen extends StatefulWidget {
  const SetAccessPointScreen({super.key});

  @override
  State<SetAccessPointScreen> createState() => _SetAccessPointScreenState();
}

class _SetAccessPointScreenState extends State<SetAccessPointScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Access Point Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchForm(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: deviceInfoList
                    .map(
                      (item) => Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Text(item),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Search Device From Here'),
            SizedBox(
              height: 16,
            ),
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
            ElevatedButton(
              onPressed: () {},
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
