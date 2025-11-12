let logo = "doc/logo.png"
let app = "oca"
let version = "0.0.1"
let title = "OCaml Compiler Architecture"
let author = "Dmitry Ponyatov"
let email = "dponyatov@gmail.com"
let year = 2025
let license = "MIT"
let gitflic = "git@gitflic.ru:dponyatov/oca.git"
let github = "https://github.com/ponyatov/oca"

let readme () =
  let f = open_out "README.md" in
  Printf.fprintf f "# ![](%s) `%s` %s
## %s

(c) %s <<%s>> %i %s

github: %s
" logo app version title author email year license github;
  close_out f
(* readme () *)
