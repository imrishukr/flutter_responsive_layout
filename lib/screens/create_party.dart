import 'package:flutter/material.dart';
import 'package:flutter_responsive_layout/data/parties_data.dart';
import 'package:flutter_responsive_layout/models/party.dart';
import 'package:go_router/go_router.dart';

class CreateParty extends StatefulWidget {
  const CreateParty({super.key});

  @override
  State<CreateParty> createState() => _CreatePartyState();
}

class _CreatePartyState extends State<CreateParty> {
  final _nameTextController = TextEditingController();
  final _desTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 60.0,
          vertical: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a party name',
              ),
            ),
            SizedBox(height: 28.0),
            TextField(
              controller: _desTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a party description',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _addParty,
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }

  void _addParty() {
    final parties = PartiesData.parties;

    parties
      ..add(
        Party(
          name: _nameTextController.text,
          description: _desTextController.text,
        ),
      );

    context.pop();
  }
}
