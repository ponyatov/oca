let app = "oca"

let cpp () =
  let f = open_out "src/" in
  Printf.fprintf f
    "# ![](%s) `%s` %s\n## %s\n\n(c) %s <<%s>> %i %s\n\ngithub: %s\n" logo app
    version title author email year license github;
  close_out f
(* readme () *)
