library tree_view;

import 'dart:html';
import 'package:antlr4dart/antlr4dart.dart';
import 'package:codemirror/codemirror.dart';
import 'package:dart_parser/dart_parser.dart';

main() {
  var tree = document.getElementById("tree");
  var codeMirror = new CodeMirror.fromTextArea(
      document.getElementById("editor"), options: {
    "mode": "application/dart"
  });

  document
      .getElementById("build")
      .onClick
      .listen((_) {
    String code = codeMirror.getDoc().getValue();
    var source = new StringSource(code);
    var lexer = new DartlangLexer(source)
      ..onSyntaxError.listen(onSyntaxError);
    var tokens = new CommonTokenSource(lexer);
    var parser = new DartlangParser(tokens)
      ..onSyntaxError.listen(onSyntaxError);
    var ast = parser.compilationUnit();

    ParseTreeWalker.DEFAULT.walk(new DumpListener(tree..children.clear()), ast);
  });

  document
      .getElementById("clear")
      .onClick
      .listen((_) {
    tree.children.clear();
  });
}

class DumpListener extends DartlangBaseListener {
  int _indents = 0;
  Element tree;

  DumpListener(this.tree);

  @override
  void enterEveryRule(ParserRuleContext context) {
    print("Found a ${context.runtimeType}");
    var node = new Element.html(
        '<div class="ui item"><i class="angle right icon"></i>${context
            .runtimeType} "${context.text}"</div>');
    tree.children.add(node..style.marginLeft = "${_indents * 0.5}em");
    _indents++;
    super.enterEveryRule(context);
  }

  @override
  void exitEveryRule(ParserRuleContext context) {
    super.exitEveryRule(context);
    _indents--;
  }


}

onSyntaxError(SyntaxError e) {

}