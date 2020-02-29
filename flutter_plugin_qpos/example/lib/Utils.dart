import 'dart:typed_data';

class Utils {
 static String Uint8ListToHexStr(Uint8List list) {
    final String HEXES = "0123456789ABCDEF";
    if (list == null) {
      return null;
    }
    var hex = StringBuffer();

    for (int i = 0; i < list.length; i++) {
      hex.write(HEXES[((list[i] & 0xF0) >> 4)]);
      hex.write(HEXES[((list[i] & 0x0F))]);
    }
    return hex.toString();
  }

 static bool equals(String value, String other) {
    int n = other.length;
    if (n == value.length) {
      int i = 0;
      while (n-- != 0) {
        if (value.codeUnitAt(i) != other.codeUnitAt(i)) return false;
        i++;
      }
      return true;
    }
    return false;
  }

}
