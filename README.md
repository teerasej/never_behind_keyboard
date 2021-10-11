<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Make your form area and its specific bottom never be put behind the on-screen keyboard.

## Features

- Provide Never behind keyboard area for your input form
- Detect from multiple focus source
- Support for `TextField` and `TextFormField`

## Limitation

- Currently support only one area's bottom per never behind area
- I use `Scrollable.ensureVisible()` to scroll to target widget. But somehow, I found the animation is not completely smooth. you can try it with [demo project](https://github.com/teerasej/flutter_never_behind_keyboard/tree/use-local-package)

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
