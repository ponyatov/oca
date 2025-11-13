# Модуль String

### Длина строки

```ocaml
let len = String.length "hello"  (* 5 *)
```

```ocaml
(* Определение границ лексем *)
let is_identifier str = 
  String.length str > 0 && 
  (match str.[0] with
   | 'a'..'z' | 'A'..'Z' | '_' -> true (* начинается с буквы или _ )
   | _ -> false)
```

### Подстроки

```ocaml
let sub = String.sub "hello world" 6 5  (* "world" *)
```

### Поиск и замена

```ocaml
let index = String.index "hello" 'e'  (* 1 *)
let contains = String.contains "hello" 'l'  (* true *)
```

```ocaml
(* Извлечение подстрок для обработки числовых литералов *)
let parse_numeric_literal str =
  if String.contains str '.' then
    `Float (float_of_string str)
  else
    `Int (int_of_string str)
```

### Преобразование регистра

```ocaml
let upper = String.uppercase_ascii "hello"  (* "HELLO" *)
let lower = String.lowercase_ascii "HELLO"  (* "hello" *)
```
```ocaml
(* Нормализация служебных слов *)
let normalize_keyword word =
  String.lowercase_ascii word |> String.trim
```

### 

- Разделение строк 
```ocaml
let words = String.split_on_char ' ' "hello world"  (* ["hello"; "world"] *)
```
- (* Обрезка пробелов *)
```ocaml
let trimmed = String.trim "  hello  "  (* "hello" *)
```
