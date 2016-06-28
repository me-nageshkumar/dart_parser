parser grammar DartVariables;

// Variables are storage locations in memory.
variableDeclaration: declaredIdentifier (COMMA identifier)*;
declaredIdentifier: metadata finalConstVarOrType identifier;
finalConstVarOrType: FINAL type? | CONST type? | varOrType;
varOrType: VAR | type;
initializedVariableDeclaration: declaredIdentifier (EQUALS expression)? (COMMA initializedIdentifier)*;
initializedIdentifier: identifier (EQUALS expression)?;
initializedIdentifierList: initializedIdentifier (COMMA initializedIdentifier)*;

// Also including types here
type: typeName typeArguments?;
typeName: qualified | DYNAMIC;
typeArguments: ANGLE_L typeList ANGLE_R;
typeList: type (COMMA type)*;
typeAlias: metadata TYPEDEF typeAliasBody;
typeAliasBody: functionTypeAlias;
functionTypeAlias: functionPrefix typeParameters? formalParameterList SEMI;
functionPrefix: returnType? identifier;