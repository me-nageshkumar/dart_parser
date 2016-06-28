library tree_view;

import 'dart:html';
import 'package:antlr4dart/antlr4dart.dart';
import 'package:codemirror/codemirror.dart';
import 'package:dart_parser/dart_parser.dart';

main() {
  var codeMirror = new CodeMirror.fromTextArea(
      document.getElementById("editor"), options: {
    "mode": "application/dart"
  });

  document.getElementById("build").onClick.listen((_) {
    String code = codeMirror.getDoc().getValue();
    var source = new StringSource(code);
    var lexer = new DartlangLexer(source)..onSyntaxError.listen(onSyntaxError);
    var tokens = new CommonTokenSource(lexer);
    var parser = new DartlangParser(tokens)..onSyntaxError.listen(onSyntaxError);
    var ast = parser.compilationUnit();
    var tree = document.getElementById("tree")..children.clear();
    dumpCtx(ast, tree);
  });
}

String spaces() => 'style="margin-left: ${indents}em"';

int indents = 0;
dumpCtx(ParserRuleContext ctx, Element elem) {
  var node = new Element.html('<div class="ui item" ${spaces()}><i class="caret down icon"></i>${ctx.runtimeType}</div>');
  elem.children..add(node);
  indents++;
  ctx.children?.forEach((child) => dumpTree(child, elem));
  indents--;
}

dumpTree(ParseTree tree, Element elem) {
  var node = new Element.html('<div class="ui item"${spaces()}><i class="caret down icon"></i>${tree.runtimeType}</div>');
  elem.children.add(node);
}

onSyntaxError(SyntaxError e) {

}