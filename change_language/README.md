# change_language

- [reference from](https://medium.com/@puneetsethi25/flutter-internationalization-switching-locales-manually-f182ec9b8ff0)

# sample command
- first command
```
$ flutter pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/locale/app_localization.dart
```
- second command
```
$ flutter pub run intl_translation:generate_from_arb \
--output-dir=lib/l10n --no-use-deferred-loading \
lib/l10n/intl_messages.arb lib/l10n/intl_mm.arb lib/l10n/intl_en.arb lib/locale/app_localization.dart
```
