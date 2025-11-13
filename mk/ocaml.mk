ocaml: $(DUNE) $(UTOP) $(OFMT) $(OLSP)

$(OPAM):
	bash -c "sh <(curl -fsSL https://opam.ocaml.org/install.sh)"
	opam init -a

$(OCAMLC): $(OPAM)
	opam switch set default ; eval $(opam env --switch=default)
# 	opam switch create $(OCAML_VER) ocaml-base-compiler.$(OCAML_VER)
# 	opam switch set $(OCAML_VER) ; eval $(opam env --switch=$(OCAML_VER))
# 	opam switch create 5.3.0 ocaml-base-compiler.5.3.0
# 	opam switch set 5.3.0 ; eval $(opam env --switch=5.3.0)
# 	opam switch list-available ; opam switch list
# 	opam switch create cs3110 ocaml-base-compiler.$(OCAML_VER) && touch $@
# 	opam switch set    cs3110 ; eval $(opam env)

$(DUNE) $(UTOP) $(OFMT) $(OLSP): $(OCAMLC)
	opam install -y dune utop ocamlformat ocaml-lsp-server
	touch $(DUNE) $(UTOP) $(OFMT) $(OLSP)
	$(MAKE) .ocamlformat .ocamlinit

$(CAMLP5): $(OCAMLC)
	opam install -y camlp5 && touch $@

.ocamlformat:
	echo "version = `ocamlformat --version`" > $@

.ocamlinit:
	echo "#use "topfind";;" > $@
