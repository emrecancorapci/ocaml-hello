let () = Printf.printf "%s\n" Hello.En.hello
let exp1 = Sexplib.Sexp.of_string "(This (is an) (s expression))"
let () = Printf.printf "%s\n" (Sexplib.Sexp.to_string exp1)

(* Data Types *)
let i : int = 42
let f : float = 3.14
let s : string = "String"
let c : char = 'a'
let b : bool = true
let () = Printf.printf "%s\n%i\n%f\n%c\n%b\n" s i f c b
let l : int list = [ 1; 2; 3; 4 ];;

5 :: l

(* Function *)
let square x = x * x;;

print_int (square 4);;
print_endline ""

(* Typed Function *)
let rect (x : int) (y : int) : int = x * y

(* Currying *)
let multiple_by_five : int -> int = rect 5
let ten : int = multiple_by_five 2;;

print_int ten;;
print_endline "";;

(* Anonymous (Lambda) Functions *)

List.map (fun int -> Printf.printf "\n%i" int) l;;
print_endline ""

(* If-Else Expr *)
let abs (x : int) : int = if x < 0 then -x else x;;

print_int (abs (-8));;
print_endline ""

(* Pattern Matching *)
let describe_num n =
  match n with
  | 0 -> "Zero"
  | 1 -> "One"
  | x when x > 0 -> "Positive"
  | _ -> "Negative" (* Wildcard pattern *)
;;

print_endline (describe_num 1)
