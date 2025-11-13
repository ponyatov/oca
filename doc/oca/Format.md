# Format
## продвинутое [[Форматирование строк]]

Модуль `Format` представляет собой один из наиболее мощных инструментов OCaml для структурированного форматирования вывода. В контексте разработки компиляторов он находит применение в генерации читаемого кода, pretty-printing AST, создании диагностических сообщений и документировании.

Базовый механизм модуля Format основан на форматирующих функциях и специальных управляющих символах:

```ocaml
open Format

(* Простое форматирование *)
let print_ast_node node_type content =
  printf "@[<2>%s: %s@]@." node_type content

(* Форматирование с отступами *)
let print_nested_structure name items =
  printf "@[<v 2>%s:@,%a@]@." 
    name 
    (pp_print_list pp_print_string) items
```

## Управление breaking space и отступами

## Генерация кода

```ocaml
let pp_c_type fmt = function
  | `Int -> fprintf fmt "int"
  | `Float -> fprintf fmt "float"
  | `Pointer t -> fprintf fmt "%a*" pp_c_type t
  | `Array (t, size) -> fprintf fmt "%a[%d]" pp_c_type t size

let pp_c_declaration fmt (name, typ) =
  fprintf fmt "@[<hov 2>%a %s;@]" pp_c_type typ name

let pp_c_function fmt (return_type, name, params, body) =
  fprintf fmt "@[<v 2>%a %s(@[<hov>%a@]) {@,%a@]@,}" 
    pp_c_type return_type
    name
    (pp_print_list ~pp_sep:(fun fmt () -> fprintf fmt ",@ ") pp_c_declaration) params
    pp_c_statement body
```
