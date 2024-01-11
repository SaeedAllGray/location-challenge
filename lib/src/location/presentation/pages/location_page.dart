import 'package:application_challenge/src/location/presentation/logic/location_bloc.dart';
import 'package:application_challenge/src/location/presentation/pages/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocationPage extends StatelessWidget {
  LocationPage({super.key});

  final LocationBloc bloc = LocationBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<LocationBloc, LocationState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.search,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onChanged: (value) =>
                          bloc..add(SearchLocationEvent(input: value)),
                    ),
                  ),
                  if (state is LocationInProgressState)
                    const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  if (state is LocationLoadedState)
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(10),
                        itemCount: state.locationList.length,
                        itemBuilder: (context, index) => ListTile(
                          textColor: state.locationList[index].isBest
                              ? Colors.lightGreen
                              : Colors.black,
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailsPage(
                                    location: state.locationList[index]),
                                fullscreenDialog: true),
                          ),
                          title: Text(state.locationList[index].name),
                          trailing: const Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
