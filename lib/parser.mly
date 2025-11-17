%{
  open Ast
%}

%token <int> INT
%token <float> FLOAT
%token <bool> BOOL
%token NIL
%token PLUS MINUS STAR SLASH
%token LPAREN RPAREN
%token <string> IDENT
%token EOF

%left PLUS MINUS    /* lowest precedence */
%left STAR SLASH    /* medium precedence */
%nonassoc UMINUS    /* highest precedence */

%start <Ast.ast> prog
%%

prog:
  | e = expr; EOF { Expr e }
  ;

expr:
  | scalar { $1 }
  | IDENT { Var $1 }
  | LPAREN e = expr RPAREN { e }
  | MINUS e = expr %prec UMINUS { Neg (Minus, e) }
  | PLUS e = expr %prec UMINUS { Pos (Plus, e) }
  | e1 = expr PLUS e2 = expr { Add (e1, Plus, e2) }
  | e1 = expr MINUS e2 = expr { Sub (e1, Minus, e2) }
  | e1 = expr STAR e2 = expr { Mul (e1, Star, e2) }
  | e1 = expr SLASH e2 = expr { Div (e1, Slash, e2) }
  ;

scalar:
  | INT { Scalar (Int $1) }
  | FLOAT { Scalar (Float $1) }
  | BOOL { Scalar (Bool $1) }
  | NIL { Scalar Nil }
  ;
