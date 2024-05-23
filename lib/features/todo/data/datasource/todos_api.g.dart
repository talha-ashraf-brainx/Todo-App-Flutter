// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todosApiHash() => r'aaff32ede67dce05be00db2e4b97cfcc744809a8';

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

abstract class _$TodosApi extends BuildlessAutoDisposeNotifier<void> {
  late final ApiManager apiManager;

  void build(
    ApiManager apiManager,
  );
}

/// See also [TodosApi].
@ProviderFor(TodosApi)
const todosApiProvider = TodosApiFamily();

/// See also [TodosApi].
class TodosApiFamily extends Family<void> {
  /// See also [TodosApi].
  const TodosApiFamily();

  /// See also [TodosApi].
  TodosApiProvider call(
    ApiManager apiManager,
  ) {
    return TodosApiProvider(
      apiManager,
    );
  }

  @override
  TodosApiProvider getProviderOverride(
    covariant TodosApiProvider provider,
  ) {
    return call(
      provider.apiManager,
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
  String? get name => r'todosApiProvider';
}

/// See also [TodosApi].
class TodosApiProvider extends AutoDisposeNotifierProviderImpl<TodosApi, void> {
  /// See also [TodosApi].
  TodosApiProvider(
    ApiManager apiManager,
  ) : this._internal(
          () => TodosApi()..apiManager = apiManager,
          from: todosApiProvider,
          name: r'todosApiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todosApiHash,
          dependencies: TodosApiFamily._dependencies,
          allTransitiveDependencies: TodosApiFamily._allTransitiveDependencies,
          apiManager: apiManager,
        );

  TodosApiProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.apiManager,
  }) : super.internal();

  final ApiManager apiManager;

  @override
  void runNotifierBuild(
    covariant TodosApi notifier,
  ) {
    return notifier.build(
      apiManager,
    );
  }

  @override
  Override overrideWith(TodosApi Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodosApiProvider._internal(
        () => create()..apiManager = apiManager,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        apiManager: apiManager,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<TodosApi, void> createElement() {
    return _TodosApiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodosApiProvider && other.apiManager == apiManager;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, apiManager.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TodosApiRef on AutoDisposeNotifierProviderRef<void> {
  /// The parameter `apiManager` of this provider.
  ApiManager get apiManager;
}

class _TodosApiProviderElement
    extends AutoDisposeNotifierProviderElement<TodosApi, void>
    with TodosApiRef {
  _TodosApiProviderElement(super.provider);

  @override
  ApiManager get apiManager => (origin as TodosApiProvider).apiManager;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
