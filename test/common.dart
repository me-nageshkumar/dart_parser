import 'package:antlr4dart/antlr4dart.dart';
import 'package:dart_parser/dart_parser.dart';

DartlangParser parse(String input) {
  var source = new StringSource(input);
  var lexer = new DartlangLexer(source);
  var tokens = new CommonTokenSource(lexer);
  return new DartlangParser(tokens)
    ..buildParseTree = true;
}
