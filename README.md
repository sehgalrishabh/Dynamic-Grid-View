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

Flutter library to use GridView inside SingleChildScrollView without fixed height (i.e., using dynamic height based on elements).

## Features

How to use GridView inside SingleChildScrollView ?

Sometimes we need to use GridView inside a SingleChildScrollView, for instance when working on an ecommerce app. Now the problem is you can’t create a GridView inside SingleChildScrollView because both will try to take as much space available which here makes height unbounded/infinite.

DynamicGridView provides solution to the problem.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

```dart
  DynamicGridView(
              width: width,
              horizontalPadding: 16,
              dataSet: items,
              child: (context, index) {return yourGridElement};
              ),
```

```dart
— count is the total number of items or itemCount.
— itemsPerRow is the number of items in a row or crossAxisCount.
— ratio is the childAspectRatio attribute of GridView that usually is used to set the size of an item inside the grid. ratio is calculated as width/height.
— horizontalPadding is the horizontal padding given to GridView(in the case of the vertical list)
- child is the element need to return from GridView
```

## Additional information

To file an issue or to give your suggestions please reach out to https://github.com/sehgalrishabh/Dynamic-Grid-View.
