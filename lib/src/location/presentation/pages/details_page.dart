import 'package:application_challenge/src/location/model/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DetailsPage extends StatelessWidget {
  final Location location;
  const DetailsPage({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        location.type,
      )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              location.matchQuality.toString(),
              style: TextStyle(
                  fontSize: 75,
                  color: location.isBest ? Colors.green : Colors.red),
            ),
          ),
          ListTile(
            title: Text(
              location.name,
            ),
            leading: const Icon(Icons.pin_drop),
          ),
          ListTile(
            title: Text(
              '${location.coord[0]} ${location.coord[1]}',
            ),
            leading: const Icon(Icons.map),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(AppLocalizations.of(context)!.select),
            ),
          ),
        ],
      ),
    );
  }
}
