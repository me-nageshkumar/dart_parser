parser grammar DartClasses;

/**
 * Includes class, interface and mixin rules...
 */

// A *class* defines the form and behavior of a set of objects which are its *instances*.
classDefinition:
    metadata ABSTRACT? CLASS identifier typeParameters? (superclass mixins?)? interfaces? CURLY_L (metadata classMemberDefinition)* CURLY_R
    | metadata ABSTRACT? CLASS mixinApplicationClass;

mixins: WITH typeList;
classMemberDefinition:
    declaration SEMI
    | methodSignature functionBody
;

methodSignature:
    constructorSignature initializers?
    | factoryConstructorSignature
    | STATIC? functionSignature
    | STATIC? getterSignature
    | operatorSignature
;

declaration:
    constantConstructorSignature (redirection | initializers)?
    | constructorSignature (redirection | initializers)?
    | EXTERNAL constantConstructorSignature
    | EXTERNAL constructorSignature
    | ((EXTERNAL STATIC?))? getterSignature
    | ((EXTERNAL STATIC?))? setterSignature
    | EXTERNAL? operatorSignature
    | ((EXTERNAL STATIC?))? functionSignature
    | STATIC (FINAL | CONST) type? staticFinalDeclarationList
    | FINAL type? initializedIdentifierList
    | STATIC? (VAR | type) initializedIdentifierList
;

staticFinalDeclarationList: staticFinalDeclaration (COMMA staticFinalDeclaration)*;
staticFinalDeclaration: identifier EQUALS expression;

operatorSignature: returnType? op formalParameterList;
op:
    TILDE
    | binaryOperator
    | BRACKET_L BRACKET_R
    | BRACKET_L BRACKET_R EQUALS
;

binaryOperator:
    multiplicativeOperator
    | additiveOperator
    | shiftOperator
    | relationalOperator
    | EQUALS_EQUALS
    | bitwiseOperator
;

getterSignature: returnType? GET identifier;
setterSignature: returnType? SET identifier formalParameterList;

// Constructors
constructorSignature: identifier (DOT identifier)? formalParameterList;

// Redirection
redirection: COLON THIS (DOT identifier)? arguments;

initializers: COLON superCallOrFieldInitializer (COMMA superCallOrFieldInitializer)*;
superCallOrFieldInitializer:
    SUPER arguments
    | SUPER DOT identifier arguments
    | fieldInitializer
;

fieldInitializer: (THIS DOT)? identifier EQUALS conditionalExpression cascadeSection*;

factoryConstructorSignature: FACTORY identifier (DOT identifier)? formalParameterList;

redirectingFactoryConstructorSignature: CONST? FACTORY identifier (DOT identifier)? formalParameterList EQUALS type (DOT identifier)?;

constantConstructorSignature: CONST qualified formalParameterList;

superclass: EXTENDS type;
interfaces: IMPLEMENTS typeList;

mixinApplicationClass: identifier typeParameters? EQUALS mixinApplication SEMI;

mixinApplication: type mixins interfaces?;