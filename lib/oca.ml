let app = "oca"
let version = "0.0.1"
let title = "OCaml Compiler Suite"
let author = "Dmitry Ponyatov"
let email = "dponyatov@gmail.com"
let license = "MIT"
let github = "git@gitflic.ru:dponyatov/oca.git"

let readme = 
  let f = open_out "README.md" in
  Printf.fprintf f "# `${app}"
  close_out f
