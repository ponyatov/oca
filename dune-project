(lang dune 3.20)

(name oca)

(generate_opam_files true)

(source
 (github ponyatov/oca))

(authors "Dmitry Ponyatov <dponyatov@gmail.cmo>")

(maintainers "Dmitry Ponyatov <dponyatov@gmail.cmo>")

(license MIT)

(documentation https://github.com/ponyatov/oca/wiki)

(package
 (name oca)
 (synopsis "OCaml Compiler Architecture")
 (description "A longer description")
 (depends ocaml)
 (tags
  ("REPL" "compiler" embedded C Cpp E)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
