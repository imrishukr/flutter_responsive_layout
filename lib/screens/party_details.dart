import 'package:flutter/material.dart';

import '/models/party.dart';

class PartyDetails extends StatelessWidget {
  final Party? party;

  const PartyDetails({super.key, required this.party});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(party?.name ?? 'N/A'),
            SizedBox(height: 20.0),
            Text(party?.description ?? 'N/A')
          ],
        ),
      ),
    );
  }
}
