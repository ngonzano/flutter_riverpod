// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activityHash() => r'f866ca6b7c68d1f3884ecb849e003ccc64da173f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [activity].
@ProviderFor(activity)
const activityProvider = ActivityFamily();

/// See also [activity].
class ActivityFamily extends Family<AsyncValue<Activity>> {
  /// See also [activity].
  const ActivityFamily();

  /// See also [activity].
  ActivityProvider call({
    int idPokemon = 1,
  }) {
    return ActivityProvider(
      idPokemon: idPokemon,
    );
  }

  @override
  ActivityProvider getProviderOverride(
    covariant ActivityProvider provider,
  ) {
    return call(
      idPokemon: provider.idPokemon,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'activityProvider';
}

/// See also [activity].
class ActivityProvider extends FutureProvider<Activity> {
  /// See also [activity].
  ActivityProvider({
    int idPokemon = 1,
  }) : this._internal(
          (ref) => activity(
            ref as ActivityRef,
            idPokemon: idPokemon,
          ),
          from: activityProvider,
          name: r'activityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activityHash,
          dependencies: ActivityFamily._dependencies,
          allTransitiveDependencies: ActivityFamily._allTransitiveDependencies,
          idPokemon: idPokemon,
        );

  ActivityProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idPokemon,
  }) : super.internal();

  final int idPokemon;

  @override
  Override overrideWith(
    FutureOr<Activity> Function(ActivityRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ActivityProvider._internal(
        (ref) => create(ref as ActivityRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idPokemon: idPokemon,
      ),
    );
  }

  @override
  FutureProviderElement<Activity> createElement() {
    return _ActivityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActivityProvider && other.idPokemon == idPokemon;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idPokemon.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActivityRef on FutureProviderRef<Activity> {
  /// The parameter `idPokemon` of this provider.
  int get idPokemon;
}

class _ActivityProviderElement extends FutureProviderElement<Activity>
    with ActivityRef {
  _ActivityProviderElement(super.provider);

  @override
  int get idPokemon => (origin as ActivityProvider).idPokemon;
}

String _$counterHash() => r'26ea0e6ba24f03eac37e313c270299532be2f226';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = NotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
