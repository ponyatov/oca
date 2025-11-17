(** scalar literal *)
type scalar =
  | Int of int
  | Float of float
  | Bool of bool
  | Byte of char (* uint8_t *)
  | Char of Uchar.t (* char16_t // UCS-2 for RU CN and JP *)
  | Nil

(** operator *)
type op =
  | Plus
  | Minus
  | Star
  | Slash

(** infix expression *)
type expr =
  | Scalar of scalar (* single value   *)
  | Var    of string (* named variable *)
  | Pos of        Plus  * expr (* +a *)
  | Neg of        Minus * expr (* -b *)
  | Add of expr * Plus  * expr (* a+b *)
  | Sub of expr * Minus * expr (* a-b *)
  | Mul of expr * Star  * expr (* a*b *)
  | Div of expr * Slash * expr (* a/b *)

(* Abstract Syntax Tree *)
type ast =
  | Expr of expr
