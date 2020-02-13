import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

// GIVEN METHOD

class GivenType2TextByKey
    extends Given2WithWorld<String, String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1, String input2) async {
    SerializableFinder keyFinder = find.byValueKey(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.scrollIntoView(keyFinder);
      });
      await world.driver.tap(keyFinder);
      await world.driver.enterText(input2);
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I fill the {string} field with {string}");
}

// WHEN METHOD

class WhenType2TextByKey extends When2WithWorld<String, String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1, String input2) async {
    SerializableFinder keyFinder = find.byValueKey(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.scrollIntoView(keyFinder);
      });
      await world.driver.tap(keyFinder);
      await world.driver.enterText(input2);
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I fill the {string} field with {string}");
}


class WhenChoose1TextByText extends When2WithWorld<String, String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1, String input2) async {
    SerializableFinder keyFinder = find.byValueKey(input1);
    SerializableFinder textFinder = find.text(input2);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.scrollIntoView(keyFinder);
      });
      await Future.delayed(Duration(seconds: 2));
      await world.driver.tap(keyFinder);
      await Future.delayed(Duration(seconds: 2));
      await world.driver.tap(textFinder);
    } catch (e) {
      throw e;
    }
    
  }

  @override
  RegExp get pattern => RegExp(r"I choose the {string} dropdown field with {string}");
}


// THEN METHOD

class ThenType2TextByKey extends Then2WithWorld<String, String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1, String input2) async {
    SerializableFinder keyFinder = find.byValueKey(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.scrollIntoView(keyFinder);
      });
      await world.driver.tap(keyFinder);
      await world.driver.enterText(input2);
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I fill the {string} field with {string}");
}
