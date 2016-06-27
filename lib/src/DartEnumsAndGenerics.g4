parser grammar DartEnumsAndGenerics;

// Enum, generics AND metadata

enumType: metadata ENUM identifier CURLY_L identifier (COMMA identifier)* CURLY_R;

typeParameter: metadata identifier (EXTENDS type)?;
typeParameters: ANGLE_L typeParameter (COMMA typeParameter)* ANGLE_R;

metadata: (metadatum)*;
metadatum: ARROBA ofType arguments?;
ofType: qualified (DOT identifier)?;