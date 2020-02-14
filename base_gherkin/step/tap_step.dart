import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

// GIVEN METHOD

class GivenTap1ButtonByKey extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    SerializableFinder keyFinder = find.byValueKey(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.scrollIntoView(keyFinder);
      });
      await world.driver.tap(keyFinder);
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I tap the {string} button");
}

class GivenTap1ButtonByText extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    SerializableFinder textFinder = find.text(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.tap(textFinder);
      });
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I tap {string}");
}

class GivenTap1TabBarByText extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    SerializableFinder tabBarFinder = find.text(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.tap(tabBarFinder);
      });
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I tap the {string} tab");
}


// WHEN METHOD

class WhenTap1ButtonByKey extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    SerializableFinder keyFinder = find.byValueKey(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.scrollIntoView(keyFinder);
      });
      await world.driver.tap(keyFinder);
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I tap the {string} button");
}

class WhenTap1ButtonByText extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    SerializableFinder textFinder = find.text(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.tap(textFinder);
      });
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I tap {string}");
}

class WhenTap1TabBarByText extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    SerializableFinder tabBarFinder = find.text(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.tap(tabBarFinder);
      });
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I tap the {string} tab");
}


// THEN METHOD

class ThenTap1ButtonByKey extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    SerializableFinder keyFinder = find.byValueKey(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.scrollIntoView(keyFinder);
      });
      await world.driver.tap(keyFinder);
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I tap the {string} button");
}

class ThenTap1ButtonByText extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    SerializableFinder textFinder = find.text(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.tap(textFinder);
      });
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I tap {string}");
}

class ThenTap1TabBarByText extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    SerializableFinder tabBarFinder = find.text(input1);
    try {
      await world.driver.runUnsynchronized(() async {
        await world.driver.tap(tabBarFinder);
      });
    } catch (e) {
      throw e;
    }
  }

  @override
  RegExp get pattern => RegExp(r"I tap the {string} tab");
}
