part of 'utils.dart';

class StateLogger extends ProviderObserver {
  const StateLogger();

  @override
  void didUpdateProvider(ProviderBase<Object?> provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    if (kDebugMode) {
      print('''
    {
      provider: ${provider.name ?? provider.runtimeType},
      oldValue: $previousValue,
      newValue: $newValue,
    }
    ''');
    }
  }
}
