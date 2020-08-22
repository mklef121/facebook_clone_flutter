
import 'dart:math';
import 'dart:ui';

class UniqueColorGenerator {

  static Random random = new Random();

  static Color getColor() {

    return Color.fromARGB(

        255, random.nextInt(255), random.nextInt(255), random.nextInt(255));

  }

}