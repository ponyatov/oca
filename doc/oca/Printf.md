# Printf
## [[Форматирование строк]]

Модули `Printf` и `Format` обеспечивают генерацию структурированных диагностических сообщений:

```ocaml
let name = "Alice"
let age = 25
let message = Printf.sprintf "Name: %s, Age: %d" name age
```
