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
