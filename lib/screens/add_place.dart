import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  State<AddPlaceScreen> createState() {
    return _AddPlaceScreenState();
  }
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
final _titleController = TextEditingController();


  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new place')
        )
        , body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child:Column(
            children: [
            TextField(
              decoration: const InputDecoration(
                label: Text('Title'),
              ),
              controller: _titleController,
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(onPressed: (){}, label: const Text('Add Place'), icon: const Icon(Icons.add),),
          ],)
        ),);
  }
}
