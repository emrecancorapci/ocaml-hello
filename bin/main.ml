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
let l : int list = [ 1; 2; 3; 4 ]
(* let tuple : int * string * char = (1, "one", 'o')
let pair : int * string = (10, "on") *)

(* FUNCTIONS *)

(* Basic Function *)
let square x = x * x;;

print_int (square 4);;
print_endline ""

(* Typed Function *)
let rect (x : int) (y : int) : int = x * y

(* Currying *)
let multiple_by_five : int -> int = rect 5
let ten : int = multiple_by_five 2;;

print_int ten;;
print_endline ""

(* Anonymous (Lambda) Functions *)
let print_list = List.map (fun int -> Printf.printf "\n%i" int);;

print_list l;;
print_endline ""

(* Recursive Functions *)
let rec range lo hi step =
  if lo > hi then [] else lo :: range (lo + step) hi step
;;

(* 0 1 3 5 7 9 *)
print_list (0 :: range 1 9 2);;
print_endline ""

