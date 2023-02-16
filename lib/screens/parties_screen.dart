import 'package:flutter/material.dart';
import 'package:flutter_responsive_layout/constants/constants.dart';
import 'package:go_router/go_router.dart';

import '../data/parties_data.dart';

class PartiesScreen extends StatelessWidget {
  const PartiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushNamed(RouteConstants.createPartyScreen),
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final party = PartiesData.parties[index];
                  return ListTile(
                    onTap: () => context.pushNamed(RouteConstants.partyDetails,
                        extra: party),
                    title: Text(party.name),
                    subtitle: Text(party.description),
                  );
                },
                separatorBuilder: (_, __) => Divider(),
                itemCount: PartiesData.parties.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
