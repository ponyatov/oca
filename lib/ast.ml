type scalar =
  | Int of int
  | Float of float
  | Bool of bool
  | Byte of char (* uint8_t *)
  | Char of Uchar.t (* wchar_t // limited supports UCS-2 for RU CN and JP *)

type ast =
  | Scalar of scalar (* scalar literal *)
  | Nil
  | Ptr of scalar (* raw pointer to typed memory *)
  | Array of int * scalar (* raw fixed-size array *)
