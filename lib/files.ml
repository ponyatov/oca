(* #require "ppx_string" *)
let app = "oca"

let cpp () =
  let f = open_out "src/oca.cpp" in
  Printf.fprintf f "%s"
    [%string "#include \"%{app}.hpp\"
int main() { return 0; }
"];
  close_out f

(* cpp () *)
