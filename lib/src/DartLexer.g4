grammar DartLexer;

NEWLINE: '\n' | '\r';
WHITESPACE: ('\t' | ' ' | NEWLINE)+ -> skip;

SINGLE_LINE_COMMENT: '//' .*? NEWLINE* -> channel(HIDDEN);
MULTI_LINE_COMMENT: '/*' (MULTI_LINE_COMMENT | .)*? '*/' -> channel(HIDDEN);

// Symbols
ANGLE_L: '<';
ANGLE_R: '>';
ARROBA: '@';
ARROW: '=>';
BRACKET_L: '[';
BRACKET_R: ']';
CARET: '^';
COLON: ':';
COMMA: ',';
CURLY_L: '{';
CURLY_R: '}';
DIGIT: [0-9];
DOLLAR: '$';
DOT: '.';
EQUALS_EQUALS: '==';
EXCLAMATION: '!';
LETTER: [A-Za-z];
PAREN_L: '(';
PAREN_R: ')';
POUND: '#';
QUESTION: '?';
SEMI: ';';
UNDERSCORE: '_';

// Reserved words
AS: 'as';
ASSERT: 'assert';
BREAK: 'break';
CASE: 'case';
CATCH: 'catch';
CLASS: 'class';
CONST: 'const';
CONTINUE: 'continue';
DEFAULT: 'default';
DO: 'do';
ELSE: 'else';
EXTENDS: 'extends';
FALSE: 'false';
FINAL: 'final';
FINALLY: 'finally';
FOR: 'for';
IF: 'if';
IN: 'in';
IS: 'is';
IS_NOT: 'is!';
NEW: 'new';
NULL: 'null';
RETHROW: 'rethrow';
RETURN: 'return';
SUPER: 'super';
SWITCH: 'switch';
THIS: 'this';
THROW: 'throw';
TILDE: '~';
TRUE: 'true';
TRY: 'try';
VAR: 'var';
VOID: 'void';
WHILE: 'while';
WITH: 'with';

// Keywords
ABSTRACT: 'abstract';
ASYNC: 'async';
ASYNC_GEN: 'async*';
AWAIT: 'await';
DEFERRED: 'deferred';
DYNAMIC: 'dynamic';
ENUM: 'enum';
EXPORT: 'export';
EXTERNAL: 'external';
FACTORY: 'factory';
GET: 'get';
HIDE: 'hide';
IMPLEMENTS: 'implements';
IMPORT: 'import';
LIBRARY: 'library';
OF: 'of';
ON: 'on';
OPERATOR: 'operator';
PART: 'part';
SET: 'set';
SHOW: 'show';
STATIC: 'static';
SYNC_GEN: 'sync*';
TYPEDEF: 'typedef';
YIELD: 'yield';
YIELD_EACH: 'yield*';

// Operators
BITWISE_AND: '&';
BITWISE_XOR: '^';
BITWISE_OR: '|';
DECREMENT: '--';
EQUALS: '--';
GT: '>';
GTE: '>=';
LT: '<';
LTE: '<=';
IF_NOT_NULL: '?.';
IF_NULL: '??';
INCREMENT: '++';
LOGICAL_AND: '&&';
LOGICAL_EQUALS: '==';
LOGICAL_OR: '||';
LOGICAL_NOT: '!=';
MINUS: '-';
MODULO: '%';
PLUS: '+';
SHL: '<<';
SHR: '>>';
TIMES: '*';
TILDE_VIRGULE: '˜/';
VIRGULE: '/';

// Compound operators
BITWISE_AND_EQUALS: BITWISE_AND EQUALS;
BITWISE_XOR_EQUALS: BITWISE_XOR EQUALS;
BITWISE_OR_EQUALS: BITWISE_OR EQUALS;
IF_NULL_EQUALS: IF_NULL EQUALS;
MINUS_EQUALS: MINUS EQUALS;
MODULO_EQUALS: MODULO EQUALS;
PLUS_EQUALS: PLUS EQUALS;
SHL_EQUALS: SHL EQUALS;
SHR_EQUALS: SHR EQUALS;
TILDE_VIRGULE_EQUALS: TILDE_VIRGULE EQUALS;
TIMES_EQUALS: TIMES EQUALS;
VIRGULE_EQUALS: VIRGULE EQUALS;

additiveOperator: PLUS | MINUS;
multiplicativeOperator: TIMES | VIRGULE | TILDE_VIRGULE | MODULO;
relationalOperator: LT | GT | LTE | GTE | AS | IS | IS_NOT;
shiftOperator: SHL | SHR;
bitwiseOperator: BITWISE_AND | BITWISE_XOR | BITWISE_OR;

compoundAssignmentOperator:
    TIMES_EQUALS
    | VIRGULE_EQUALS
    | TILDE_VIRGULE_EQUALS
    | MODULO_EQUALS
    | PLUS_EQUALS
    | MINUS_EQUALS
    | SHL_EQUALS
    | SHR_EQUALS
    | BITWISE_AND_EQUALS
    | BITWISE_OR_EQUALS
    | IF_NULL_EQUALS
;

equalityOperator: LOGICAL_EQUALS | LOGICAL_EQUALS;

prefixOperator: minusOperator | negationOperator | tildeOperator;
minusOperator: MINUS;
negationOperator: EXCLAMATION;
tildeOperator: TILDE;

postfixOperator: incrementOperator;
incrementOperator: INCREMENT | DECREMENT;

isOperator: IS | IS_NOT;
asOperator: AS;