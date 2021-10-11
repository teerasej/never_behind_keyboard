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

The goal of this package is useful for the scenario that you have a TextField or TextFormField, and whenever they have been focused, you don't only need to let them sit on top of on-screen keyboard, but the area below them too.

The area below the `TextField` or `TextFormField` can be anything. 

## Features

- Provide Never behind keyboard area for your input form
- Support `TextField` and `TextFormField`
- Detect multiple focus source, for example you can put several `TextField` or `TextFormField` as focus source

## Limitation

- Currently support only one area's bottom per never behind area
- I use `Scrollable.ensureVisible()` to scroll to target widget. But somehow, I found the animation is not completely smooth. you can try it with [demo project](https://github.com/teerasej/flutter_never_behind_keyboard/tree/use-local-package)

## Getting started

1. Add package to your project, please follow instruction in installation tab
2. you are ready to use the widget

## Usage

This package has 3 widgets. 

1. `NeverBehindKeyboardArea`: The first part you need to setup a scroll view-based (`ScrollView` or `ListView`) to its. The widget will recognize `NeverBehindFocusSource` and `NeverBehindBottom` which you will put them inside.
2. `NeverBehindFocusSource`: A widget you will put inside `NeverBehindKeyboardArea` and wrap the focusable widget, such as `TextField` or `TextFormField`
3. `NeverBehindBottom`: you need to put this as the flag widget that will sit on the keyboard. You must give it a global key.

```dart
NeverBehindKeyboardArea(
    // put a scrollview-based (ListView or ScrollView)
    scrollView: ListView(
        children: [
            // Use this to demonstrate the area will be hidden behind on-screen keyboard if it appears.
            const SizedBox(
                height: 400,
            ),
            Column(
                children: [
                    // NeverBehindFocusSource widget will be put inside NeverBehindKeyboardArea widget.
                    // You can put TextField or TextFormField inside, this widget has purpose to detect focus event from them and notify NeverBehindKeyboardArea.
                    NeverBehindFocusSource(
                        child: Column(
                            children: [
                                TextField(
                                    decoration: InputDecoration(
                                        hintText: "ex. Google Flutter 2 for beginner",
                                    ),
                                )
                            ],
                        ),
                    ),
                    const SizedBox(
                        height: 70,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text('Simple Sign in Button'),
                    ),
                    const Text("Look like I am not behind the keyboard any more, because there's NeverBehindBottom widget below me :)"),
                    // NeverBehindBottom widget has no need to be next to, or inside NeverBehindFocusSource widget. It just need to be put inside NeverBehindKeyboardArea widget.
                    // In almost case, you need to put it as a flagged widget that will sit  
                    // Oh, please don't forget to give it a global key. This's important.
                    NeverBehindBottom(key: GlobalKey()),
                ],
            ),
        ],
    ),
),
```

## Simple version

```dart
NeverBehindKeyboardArea(
    scrollView: ListView(
        children: [
            Column(
                children: [
                    NeverBehindFocusSource(
                        child: TextField()
                    )
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text('Simple Sign in Button'),
                    ),
                    NeverBehindBottom(key: GlobalKey()),
                ],
            ),
        ],
    ),
),
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
