grammar DartExpressions;

expression:
    assignableExpression assignmentOperator expression
    | conditionalExpression cascadeSection*
    | throwExpression
;

expressionWithoutCascade:
    assignableExpression assignmentOperator expressionWithoutCascade
    | conditionalExpression
    | throwExpressionWithoutCascade
;

expressionList: expression (COMMA expression)*;

primary:
    thisExpression
    | SUPER unconditionalAssignableSelector
    | functionExpression
    | literal
    | identifier
    | newExpression
    | NEW type POUND (DOT identifier)?
    | constObjectExpression
    | PAREN_L expression PAREN_R
;

literal: nullLiteral | booleanLiteral | numericLiteral | stringLiteral | symbolLiteral | mapLiteral | listLiteral;
nullLiteral: NULL;

// Numbers
numericLiteral: NUMBER | HEX_NUMBER;
NUMBER:
    DIGIT+ (DOT DIGIT+)? EXPONENT?
    | DOT DIGIT+ EXPONENT?
;
EXPONENT: ('e' | 'E') (PLUS | MINUS)? DIGIT+;
HEX_NUMBER: '0' ('x' | 'X') HEX_DIGIT+;
HEX_DIGIT: [A-Fa-f] | DIGIT;

booleanLiteral: TRUE | FALSE;

// Strings
stringLiteral: (multilineString | singleLineString)+;

singleLineString:
    '"' stringContentDQ* '"'
    | '\'' stringContentSQ* '\''
    | 'r' '\'' (~( '\'' | NEWLINE ))* '\''
    | 'r' '"' (~( '"' | NEWLINE ))* '"'
;

multilineString:
    '"""' stringContentTDQ* '""""'
    | '\'\'\'' stringContentTSQ* '\'\'\''
    | 'r' '"""' (~'"""')* '"""'
    | 'r' '\'\'\'' (~'\'\'\'')* '\'\'\''
;

ESCAPE_SEQUENCE:
    '\\n'
    | '\\r'
    | '\\f'
    | '\\b'
    | '\t'
    | '\\v'
    | '\\x' HEX_DIGIT HEX_DIGIT
    | '\\u' HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT
    | '\\u' CURLY_L HEX_DIGIT_SEQUENCE CURLY_R
;

HEX_DIGIT_SEQUENCE: HEX_DIGIT HEX_DIGIT? HEX_DIGIT? HEX_DIGIT? HEX_DIGIT? HEX_DIGIT?;

stringContentDQ:
    ~( '\\' | '"' | DOLLAR | NEWLINE )
    | '\\' ~( NEWLINE )
    | stringInterpolation
;
stringContentSQ:
    ~( '\\' | '\'' | DOLLAR | NEWLINE )
    | '\\' ~( NEWLINE )
    | stringInterpolation
;

stringContentTDQ:
    ~( '\\' | '"""' | DOLLAR)
    | stringInterpolation
;

stringContentTSQ:
    ~( '\\' | '\'\'\'' | DOLLAR)
    | stringInterpolation
;

stringInterpolation:
    DOLLAR IDENTIFIER_NO_DOLLAR
    | DOLLAR CURLY_L expression CURLY_R
;

symbolLiteral: POUND (op | (identifier (DOT identifier)*));

listLiteral: CONST? typeArguments? BRACKET_L (expressionList COMMA ?)? BRACKET_R;

mapLiteral: CONST? typeArguments? CURLY_L (mapLiteralEntry (COMMA mapLiteralEntry)* COMMA?)? CURLY_R;

mapLiteralEntry: expression ':' expression;

throwExpression: THROW expression;
throwExpressionWithoutCascade: THROW expressionWithoutCascade;

functionExpression:formalParameterList functionBody;

thisExpression: THIS;

newExpression: NEW type (DOT identifier)? arguments;

constObjectExpression: CONST type (DOT identifier)? arguments;

arguments: PAREN_L argumentList? PAREN_R;
argumentList:
    namedArgument (COMMA namedArgument)*
    | expressionList (COMMA namedArgument)*
;

namedArgument: label expression;

cascadeSection: DOT DOT (cascadeSelector arguments*) (assignableSelector arguments*)* (assignmentOperator expressionWithoutCascade)?;

cascadeSelector:
    BRACKET_L expression BRACKET_R
    | identifier
;

assignmentOperator: EQUALS | compoundAssignmentOperator;

conditionalExpression: ifNullExpression (QUESTION expressionWithoutCascade COLON expressionWithoutCascade)?;

ifNullExpression: logicalOrExpression (IF_NULL logicalOrExpression)*;
logicalOrExpression: logicalAndExpression (LOGICAL_OR logicalAndExpression)*;
logicalAndExpression: equalityExpression (LOGICAL_AND equalityExpression)*;

equalityExpression:
    relationalExpression (equalityOperator relationalExpression)?
    | SUPER equalityOperator relationalExpression
;

relationalExpression:
    bitwiseOrExpression (typeTest | typeCast | relationalOperator bitwiseOrExpression)?
    | SUPER relationalOperator bitwiseOrExpression
;

bitwiseOrExpression:
    bitwiseXorExpression (BITWISE_OR bitwiseXorExpression)*
    | SUPER (BITWISE_OR bitwiseXorExpression)+
;

bitwiseXorExpression:
    bitwiseAndExpression (BITWISE_XOR bitwiseAndExpression)*
    | SUPER (BITWISE_XOR bitwiseAndExpression)+
;

bitwiseAndExpression:
    shiftExpression (BITWISE_AND shiftExpression)*
    | SUPER (BITWISE_AND shiftExpression)+
;

shiftExpression:
    additiveExpression (shiftOperator additiveExpression)*
    | SUPER (shiftOperator additiveExpression)+
;

additiveExpression:
    multiplicativeExpression (additiveOperator multiplicativeExpression)*
    | SUPER (additiveOperator multiplicativeExpression)+
;

multiplicativeExpression:
    unaryExpression (multiplicativeOperator unaryExpression)*
    | SUPER (multiplicativeOperator unaryExpression)+
;

unaryExpression:
    prefixOperator unaryExpression
    | awaitExpression
    | postfixExpression
    | (minusOperator | tildeOperator) SUPER
    | incrementOperator assignableExpression
;

awaitExpression: AWAIT unaryExpression;

postfixExpression:
    assignableExpression postfixOperator
    | primary (selector* | (POUND ((identifier EQUALS?) | op)))
;

selector: assignableSelector | arguments;

assignableExpression:
    primary (arguments* assignableSelector)+
    | SUPER unconditionalAssignableSelector
    | identifier
;

unconditionalAssignableSelector:
    BRACKET_L expression BRACKET_R
    | DOT identifier
;

assignableSelector:
    unconditionalAssignableSelector
    | IF_NOT_NULL identifier
;

// We waited a LONG time to get here, but finally here are the...
// IDENTIFIERS!!!
identifier: IDENTIFIER;

IDENTIFIER_NO_DOLLAR: IDENTIFIER_START_NO_DOLLAR IDENTIFIER_PART_NO_DOLLAR*;
IDENTIFIER: IDENTIFIER_START IDENTIFIER_PART*;

BUILT_IN_IDENTIFIER:
    ABSTRACT
    | AS
    | DEFERRED
    | DYNAMIC
    | EXPORT
    | EXTERNAL
    | FACTORY
    | GET
    | IMPLEMENTS
    | IMPORT
    | LIBRARY
    | OPERATOR
    | PART
    | SET
    | STATIC
    | TYPEDEF
;

IDENTIFIER_START: IDENTIFIER_START_NO_DOLLAR | DOLLAR;
IDENTIFIER_START_NO_DOLLAR: LETTER | UNDERSCORE;
IDENTIFIER_PART_NO_DOLLAR: IDENTIFIER_START_NO_DOLLAR | DIGIT;
IDENTIFIER_PART: IDENTIFIER_START | DIGIT;

qualified: identifier (DOT identifier)?;

typeTest: isOperator type;
typeCast: asOperator type;