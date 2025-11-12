
type scalar = 
 | Int of int32 (* i32 = int32_t *)
 | Float of float (* f32 = float *)
 | Bool of bool (* bool = bool (1 byte) *)
 | Byte of char (* u8 = uint8_t // and Byte[] for byte-strings *)

  (* | Char of int16 u16 = char16_t // and Char[] for 64K limited strings (limited supports UCS-2 for RU CN and JP *)

type AST = 
| Scalar of scalar
