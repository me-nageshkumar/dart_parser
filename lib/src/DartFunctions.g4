parser grammar DartFunctions;

// Functions abstract over executable actions.

functionSignature: metadata returnType? identifier formalParameterList;
returnType: VOID | type;
functionBody:
    ASYNC? ARROW expression SEMI
    | (ASYNC | ASYNC_GEN | SYNC_GEN)? block;
block: CURLY_L statements CURLY_R;

formalParameterList:
    PAREN_L PAREN_R
    | PAREN_L normalFormalParameters (COMMA optionalFormalParameters)? PAREN_R
    | PAREN_L optionalFormalParameters PAREN_R
;

normalFormalParameters: normalFormalParameter (COMMA normalFormalParameter)*;
optionalFormalParameters: optionalPositionFormalParameters | namedFormalParameters;
optionalPositionFormalParameters: BRACKET_L defaultFormalParameter (COMMA defaultFormalParameter)* BRACKET_R;
namedFormalParameters: CURLY_L defaultNamedParameter (COMMA defaultNamedParameter)* CURLY_R;

// Required formals
normalFormalParameter: functionSignature | fieldFormalParameter | simpleFormalParameter;
simpleFormalParameter:
    declaredIdentifier
    | metadata identifier
;

fieldFormalParameter: metadata finalConstVarOrType? THIS DOT identifier formalParameterList?;

// Optional formals
defaultFormalParameter: normalFormalParameter (EQUALS expression)?;
defaultNamedParameter: normalFormalParameter (COLON expression)?;