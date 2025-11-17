let parse_string (s : string) : Ast.ast =
  let lexbuf = Lexing.from_string s in
  try Parser.prog Lexer.read lexbuf
  with 
  | Parser.Error ->
      failwith "Syntax error"
  | Lexer.SyntaxError msg ->
      failwith ("Lexer error: " ^ msg)

let parse_file (filename : string) : Ast.ast =
  let ic = open_in filename in
  let lexbuf = Lexing.from_channel ic in
  try
    let ast = Parser.prog Lexer.read lexbuf in
    close_in ic;
    ast
  with e ->
    close_in ic;
    raise e
