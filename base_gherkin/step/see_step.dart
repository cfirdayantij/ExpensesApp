import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

// GIVEN METHOD

class GivenSee1Text extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    SerializableFinder textFinder = find.text(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.getText(textFinder);
      });
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I have {string}");
}

class GivenSee2Text extends Given2WithWorld<String, String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1, String input2) async {
    SerializableFinder textFinder = find.text(input1);
    SerializableFinder textFinder2 = find.text(input2);
    try {
      await world.driver.getText(textFinder);
      await world.driver.getText(textFinder2);
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I have {string} and {string}");
}


// WHEN METHOD

class WhenSee1Text extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    SerializableFinder textFinder = find.text(input1);
    try {
      await world.driver.getText(textFinder);
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I have {string}");
}

class WhenSee2Text extends When2WithWorld<String, String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1, String input2) async {
    SerializableFinder textFinder = find.text(input1);
    SerializableFinder textFinder2 = find.text(input2);
    try {
      await world.driver.getText(textFinder);
      await world.driver.getText(textFinder2);
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I have {string} and {string}");
}


// THEN METHOD

class ThenSee1Text extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    SerializableFinder textFinder = find.text(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.getText(textFinder);
      });
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I see {string}");
}

class ThenSee2Text extends Then2WithWorld<String, String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1, String input2) async {
    SerializableFinder textFinder = find.text(input1);
    SerializableFinder textFinder2 = find.text(input2);
    try {
      await world.driver.getText(textFinder);
      await world.driver.getText(textFinder2);
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I have {string} and {string}");
}