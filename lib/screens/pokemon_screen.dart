import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/entities/domain.dart';
import '../provider/pokemon/pokemon_provider.dart';

/// The homepage of our application
class PkemonScreen extends StatefulWidget {
  const PkemonScreen({super.key});

  @override
  State<PkemonScreen> createState() => _PkemonScreenState();
}

class _PkemonScreenState extends State<PkemonScreen> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final AsyncValue<Activity> activity =
            ref.watch(activityProvider(idPokemon: count));

        return Scaffold(
          appBar: AppBar(
            title: const Text('Riverpod Generator'),
            elevation: 1,
          ),
          body: Center(
            child: activity.when(
              data: (data) {
                final showdown = data.sprites?['other']['showdown'];
                final officialArtwork =
                    data.sprites?['other']['official-artwork'];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 20),
                    CachedNetworkImage(
                      imageUrl: showdown['front_default'],
                      fit: BoxFit.fill,
                    ),
                    Text(
                      '${data.id} - Name: ${data.name}',
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    CachedNetworkImage(
                      imageUrl: officialArtwork['front_default'],
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 50),
                  ],
                );
              },
              error: (error, stackTrace) =>
                  Text('Ups, an error occurred: \n$error'),
              loading: () => const CircularProgressIndicator(),
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  count = ref.read(counterProvider.notifier).decrement();
                },
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 16),
              FloatingActionButton(
                onPressed: () {
                  count = ref.read(counterProvider.notifier).increment();
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        );
      },
    );
  }
}
