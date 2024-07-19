import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/domain.dart';

part 'pokemon_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Activity> activity(ActivityRef ref, {int idPokemon = 1}) async {
  final response =
      await http.get(Uri.https('pokeapi.co', '/api/v2/pokemon/$idPokemon'));
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return Activity.fromJson(json);
}

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() => 1; // init state

  int increment() {
    state++;
    ref.invalidate(activityProvider);
    return state;
  }

  int decrement() {
    state--;
    if (state == 0) {
      state = 1;
      Fluttertoast.showToast(
        msg: 'No hay pokemones.',
        backgroundColor: Colors.red,
        toastLength: Toast.LENGTH_SHORT,
      );
    }

    ref.invalidate(activityProvider);
    return state;
  }
}
