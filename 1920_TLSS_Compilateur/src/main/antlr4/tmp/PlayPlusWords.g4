lexer grammar PlayPlusWords;

// Words

AFFECT: 'affect';
LPAR: '(';
RPAR: ')';
COMMA: ',';
PLUS: '+';
MINUS: '-';
QUOT: '\'';
DOUBLEQUOT: '"';
DASH: '_';
COLON: ':';
SEMICOLON: ';';
QUESTION: '?';
EXCALMATION: '!';

// Identifiers

ID: LETTER (LETTER | DIGIT)* ;

NUMBER: MINUS? (DIGIT)+;

fragment LETTER: 'A'..'Z' | 'a'..'z' ;
fragment DIGIT: '0'..'9' ;

// Comments -> ignored

COMMENT: '/*' .*? '*/' -> skip;

// Whitespaces -> ignored

NEWLINE: '\r'? '\n'  -> skip ;
WS: [ \t]+ -> skip ;