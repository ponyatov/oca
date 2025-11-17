{
  open Parser
  exception SyntaxError of string
}

let digit = ['0'-'9']
let int = '-'? digit+
let float = '-'? digit+ '.' digit+
let bool = "true" | "false"
let ident = ['a'-'z' 'A'-'Z' '_'] ['a'-'z' 'A'-'Z' '0'-'9' '_']*
let white = [' ' '\t' '\r' '\n']+
let newline = '\r' | '\n' | "\r\n"

rule read =
  parse
  | white     { read lexbuf }
  | newline   { read lexbuf }
  | int       { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | float     { FLOAT (float_of_string (Lexing.lexeme lexbuf)) }
  | bool      { BOOL (bool_of_string (Lexing.lexeme lexbuf)) }
  | "nil"     { NIL }
  | '+'       { PLUS }
  | '-'       { MINUS }
  | '*'       { STAR }
  | '/'       { SLASH }
  | '('       { LPAREN }
  | ')'       { RPAREN }
  | ident     { IDENT (Lexing.lexeme lexbuf) }
  | eof       { EOF }
  | _ { raise (SyntaxError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }
