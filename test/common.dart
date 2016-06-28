import 'dart:io';
import 'package:antlr4dart/antlr4dart.dart';
import 'package:dart_parser/dart_parser.dart';

DartlangParser parse(String input) {
  var source = new StringSource(input);
  var lexer = new DartlangLexer(source)
    ..onSyntaxError.listen(handleError);
  var tokens = new CommonTokenSource(lexer);
  return new DartlangParser(tokens)
    ..buildParseTree = true
    ..onSyntaxError.listen(handleError);
}

handleError(SyntaxError e) {
  throw new Exception(
      "Syntax error at ${e.line}:${e.charPositionInLine} - ${e.message}");
}
