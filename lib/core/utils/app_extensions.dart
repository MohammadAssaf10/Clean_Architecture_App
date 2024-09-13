import 'app_enums.dart';

extension PrintedStringColor on String {
  String withColor(StringColor? color) {
    switch (color) {
      case StringColor.black:
        return '\x1B[30m$this\x1B[0m';
      case StringColor.red:
        return '\x1B[31m$this\x1B[0m';
      case StringColor.green:
        return '\x1B[32m$this\x1B[0m';
      case StringColor.yellow:
        return '\x1B[33m$this\x1B[0m';
      case StringColor.blue:
        return '\x1B[34m$this\x1B[0m';
      case StringColor.magenta:
        return '\x1B[35m$this\x1B[0m';
      case StringColor.cyan:
        return '\x1B[36m$this\x1B[0m';
      case StringColor.white:
        return '\x1B[37m$this\x1B[0m';
      default:
        return this;
    }
  }
}