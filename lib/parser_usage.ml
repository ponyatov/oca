(* Example usage *)
let () =
  let examples = [
    "5 + 3 * 2";
    "x + -y";
    "(a + b) / c";
    "true";
    "nil";
    "3.14 * 2.0";
    "-x + 5"
  ] in
  
  List.iter (fun example ->
    try
      let ast = parse_string example in
      Printf.printf "Input: %s\nAST: %s\n\n" example 
        (match ast with Expr e -> "Parsed successfully" | _ -> "Unknown")
    with e ->
      Printf.printf "Failed to parse: %s\nError: %s\n\n" example (Printexc.to_string e)
  ) examples
