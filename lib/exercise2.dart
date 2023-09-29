/// import dart:io and dart:math packages

/// In your lib folder there will be a dart file that has a
/// class called Lucky.
/// The Lucky class has a constructor which will create an instance of the class Lucky.
/// The constructor will also
/// read the two environment variables MIN and MAX
/// create a random integer between those two numbers.
/// Save the random int as a member field that can be accessed externally.

import 'dart:math';
import 'dart:io';

class Lucky {
  Map<String, String> envVars = Platform.environment;
  late int luckyNum;

  Lucky() {
    if (envVars.containsKey('MIN') && envVars.containsKey('MAX')) {
      int min = int.parse(envVars['MIN']!);
      int max = int.parse(envVars['MAX']!);
      int range = max - min;
      int rand = Random().nextInt(range) + min;
      luckyNum = rand;
    }
  }
}
