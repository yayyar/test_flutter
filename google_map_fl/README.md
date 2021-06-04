# google_map_fl

This is my testing google_map 🗺 in flutter :)

- Reference [codelabs](https://codelabs.developers.google.com/codelabs/google-maps-in-flutter/#0)

- **Note**: While it's technically possible to use the same Maps API key for both iOS and Android, it isn't recommended. Each platform has its own release cadence so each key should be unique.
  
### Useful package
- **Used** [json_serializable](https://pub.dev/packages/json_serializable) to generate to/from Json and named objects
- **Used** [build_runner](https://pub.dev/packages/build_runner) for generating files using Dart code with command
- **Used** [pedantic](https://pub.dev/packages/pedantic) for Dart static analysis corresponding with ```analysis_options.yaml```

### Commands
<p>Generate to/from Json and named objects</p>

```
flutter pub run build_runner build --delete-conflicting-outputs
```
<p>Analyze code</p>

```flutter analyze .```
