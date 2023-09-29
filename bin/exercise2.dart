import 'package:exercise2/exercise2.dart';

void main(List<String> arguments) {
  arguments.forEach((name) {
    String capitalizedName = name[0].toUpperCase() + name.substring(1);
    Lucky lucky = Lucky();
    print("Hello $capitalizedName. Your lucky number is ${lucky.luckyNum}");
  });
}
