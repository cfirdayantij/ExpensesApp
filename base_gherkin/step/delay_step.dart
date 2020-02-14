import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

// GIVEN METHOD

class GivenDelay1Second extends Given1WithWorld<int, FlutterWorld> {
  @override
  Future<void> executeStep(int input1) async {
    await Future.delayed(Duration(seconds: input1));
  }

  @override
  RegExp get pattern => RegExp(r"I wait for {int} second(s)");
}

class GivenDelay1Minute extends Given1WithWorld<int, FlutterWorld> {
  @override
  Future<void> executeStep(int input1) async {
    await Future.delayed(Duration(minutes: input1));
  }

  @override
  RegExp get pattern => RegExp(r"I wait for {int} minute(s)");
}

// WHEN METHOD

class WhenDelay1Second extends When1WithWorld<int, FlutterWorld> {
  @override
  Future<void> executeStep(int input1) async {
    await Future.delayed(Duration(seconds: input1));
  }

  @override
  RegExp get pattern => RegExp(r"I wait for {int} second(s)");
}

class WhenDelay1Minute extends When1WithWorld<int, FlutterWorld> {
  @override
  Future<void> executeStep(int input1) async {
    await Future.delayed(Duration(minutes: input1));
  }

  @override
  RegExp get pattern => RegExp(r"I wait for {int} minute(s)");
}

// THEN METHOD

class ThenDelay1Second extends Then1WithWorld<int, FlutterWorld> {
  @override
  Future<void> executeStep(int input1) async {
    await Future.delayed(Duration(seconds: input1));
  }

  @override
  RegExp get pattern => RegExp(r"I wait for {int} second(s)");
}

class ThenDelay1Minute extends Then1WithWorld<int, FlutterWorld> {
  @override
  Future<void> executeStep(int input1) async {
    await new Future.delayed(Duration(minutes: input1));
  }

  @override
  RegExp get pattern => RegExp(r"I wait for {int} minute(s)");
}
