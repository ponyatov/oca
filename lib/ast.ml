type scalar =
  | Int of int
  | Float of float
  | Bool of bool
  | Byte of char (* uint8_t *)
  | Char of Uchar.t (* char16_t // UCS-2 for RU CN and JP *)

type ast =
  | Scalar of scalar (* scalar literal *)
  | Nil
  | Ptr of int*scalar (* raw pointer to typed memory *)
  | Array of scalar*int (* raw fixed-size array *)
