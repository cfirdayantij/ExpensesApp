import 'dart:async';

import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';

import '../../base_gherkin/step/tap_step.dart';
import '../../base_gherkin/step/see_step.dart';
import '../../base_gherkin/step/type_step.dart';

Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/transaction/features/**.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json'),
      FlutterDriverReporter() // include this reporter if running on a CI server as Flutter driver logs all output to stderr
    ] // you can include the "StdoutReporter()" without the message level parameter for verbose log information
    // ..hooks = [
    //  AppStateResetHook()
    // ]
    ..stepDefinitions = [
      GivenSee2Text(),
      WhenTap1ButtonByKey(),
      ThenSee1Text(),
      GivenSee1Text(),
      WhenType2TextByKey(),
      ThenTap1ButtonByText()
    ]
    ..restartAppBetweenScenarios = false
    ..targetAppPath = "test_driver/transaction/transaction.dart"
    // ..buildFlavor =
    //     "dev" // uncomment when using build flavor and check android/ios flavor setup see android file android\app\build.gradle
    // ..targetDeviceId = "all" // uncomment to run tests on all connected devices or set specific device target id
    // ..tagExpression = "@smoke" // uncomment to see an example of running scenarios based on tag expressions
    ..logFlutterProcessOutput =
        false // uncomment to see the output from the Flutter process
    // ..flutterBuildTimeout = Duration(minutes: 3) // uncomment to change the default period that flutter is expected to build and start the app within
    ..exitAfterTestRun = false; // set to false if debugging to exit cleanly
  return GherkinRunner().execute(config);
}
