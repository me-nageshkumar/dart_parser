grammar DartStatements;

statements: statement*;
statement: label* nonLabelledStatement;

nonLabelledStatement:
    block
    | localVariableDeclaration
    | forStatement
    | whileStatement
    | doStatement
    | switchStatement
    | ifStatement
    | rethrowStatement
    | tryStatement
    | breakStatement
    | continueStatement
    | returnStatement
    | yieldStatement
    | yieldEachStatement
    | expressionStatement
    | assertStatement
    | localFunctionDeclaration
;

expressionStatement: expression? SEMI;
localVariableDeclaration: initializedVariableDeclaration SEMI;
localVariableDeclaration:initializedVariableDeclaration SEMI;
localFunctionDeclaration: functionSignature functionBody;
ifStatement: IF PAREN_L expression PAREN_R statement (ELSE statement)?;

forStatement: AWAIT? FOR PAREN_L forLoopParts PAREN_R statement;
forLoopParts:
    forInitializerStatement expression? SEMI expressionList?
    |   declaredIdentifier IN expression
    | identifier IN expression
;

forInitializerStatement:
    localVariableDeclaration |
    expression? SEMI
;

whileStatement: WHILE PAREN_L expression PAREN_R statement;

doStatement: DO statement WHILE PAREN_L expression PAREN_R SEMI;

switchStatement: SWITCH PAREN_L expression PAREN_R CURLY_L switchCase* defaultCase? CURLY_R;
switchCase: label* CASE expression COLON statements;
defaultCase: label* DEFAULT COLON statements;
rethrowStatement: RETHROW SEMI;

tryStatement: TRY block (onPart+ finallyPart? | finallyPart);

onPart:
    catchPart block
    | ON type catchPart? block
;

catchPart: CATCH PAREN_L identifier (COMMA identifier)? PAREN_R;
finallyPart: FINALLY block;
returnStatement: RETURN expression? SEMI;
label: identifier COLON;
breakStatement: BREAK identifier? SEMI;
continueStatement: CONTINUE identifier? SEMI;
yieldStatement: YIELD expression SEMI;
yieldEachStatement: YIELD_EACH expression SEMI;
assertStatement: ASSERT PAREN_L conditionalExpression PAREN_R SEMI;
