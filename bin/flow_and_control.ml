(* Flow and Control *)

(* If-Else Expr *)
let abs (x : int) : int = if x < 0 then -x else x;;

print_int (abs (-8));;
print_endline ""

(* Pattern Matching *)
let describe_num (n : int) : string =
  match n with
  | 0 -> "Zero"
  | 1 -> "One"
  | x when x > 0 -> "Positive"
  | _ -> "Negative" (* Wildcard pattern *)
;;

print_endline (describe_num 1)

(* Local Definitions *)
let x : int =
  10
  +
  (* y is deleted after use *)
  let y = 50 in
  y * y
;;

(* 2510 *)
print_int x;;
print_endline "";;

(* x and y are deleted after use *)
let y : int =
  let x : int = 21 in
  x * 2
in
print_int y (* 42 *)
;;

print_endline ""

(* Pattern Matching with Types*)
(* type primary_color = Red | Green | Blue

let color_to_rgb color =
  match color with
  | Red -> (0xff, 0, 0)
  | Green -> (0, 0xff, 0)
  | Blue -> (0, 0, 0xff)

let *)