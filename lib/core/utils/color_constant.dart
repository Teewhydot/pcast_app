import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color lightGreen80026 = fromHex('#26459121');

  static Color whiteA7003f = fromHex('#3fffffff');

  static Color blueA700 = fromHex('#3369ff');

  static Color redA400B2 = fromHex('#b2ff324b');

  static Color gray900Ab = fromHex('#ab081727');

  static Color indigoA200 = fromHex('#5f53e9');

  static Color lightGreen200 = fromHex('#cccdae');

  static Color blueA200 = fromHex('#3d8aff');

  static Color red500B2 = fromHex('#b2ff334b');

  static Color teal200 = fromHex('#79afd7');

  static Color green500 = fromHex('#5a9f5d');

  static Color red100 = fromHex('#f8cdda');

  static Color gray30099 = fromHex('#99dadada');

  static Color black90087 = fromHex('#87010304');

  static Color teal300 = fromHex('#4c9fbd');

  static Color black90001 = fromHex('#060d14');

  static Color black900 = fromHex('#060d15');

  static Color blueA20001 = fromHex('#5386e9');

  static Color black9008701 = fromHex('#87010204');

  static Color black901 = fromHex('#000000');

  static Color redA400 = fromHex('#ff324b');

  static Color whiteA70019 = fromHex('#19ffffff');

  static Color deepOrange200 = fromHex('#f7bb97');

  static Color blueGray90001 = fromHex('#441f3a');

  static Color purple700 = fromHex('#6f28af');

  static Color blueGray900 = fromHex('#283048');

  static Color blueA700B2 = fromHex('#b23369ff');

  static Color indigo700B2 = fromHex('#b22b5d95');

  static Color pink300 = fromHex('#dd5e89');

  static Color tealA700 = fromHex('#01ca8e');

  static Color gray400 = fromHex('#c4c4c4');

  static Color blueGray200 = fromHex('#aacbca');

  static Color blueGray400 = fromHex('#898f97');

  static Color blue2003f = fromHex('#3f90bee4');

  static Color gray90000 = fromHex('#0009121c');

  static Color gray900 = fromHex('#09121c');

  static Color gray90001 = fromHex('#19232f');

  static Color orange300 = fromHex('#feac5e');

  static Color cyan300 = fromHex('#4bc0c8');

  static Color teal20001 = fromHex('#79d1d7');

  static Color whiteA70026 = fromHex('#26ffffff');

  static Color bluegray400 = fromHex('#888888');

  static Color blueGray40026 = fromHex('#26898f97');

  static Color indigo900 = fromHex('#1d2b64');

  static Color indigo700 = fromHex('#2b5d95');

  static Color blueGray40067 = fromHex('#67898f97');

  static Color blueGray40001 = fromHex('#859398');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
