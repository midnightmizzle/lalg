import 'dart:io';

import 'package:lalg2/lalg2.dart' as lalg2;
import 'package:lalg2/parse_exception.dart';

main(List<String> arguments) {
  String source = File('entrada.txt').readAsStringSync();
  var parser = lalg2.Parser(source);
  try {
    parser.parse();
  } on ParseException catch (e) {
    print(e.message);
    print(e.symbol);
    print(e.line);
  }
}
