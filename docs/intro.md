# Dune

- build [`-w` for watch]:

```sh
dune build
```
- run [`-w` for watch] (`hello` is the name of the module):

```sh
dune exec hello
```

- utop (to exit use `CTRL+D` or `#quit;;`):

```sh
dune utop
```

# OCaml

- `bin/main.ml` is application entry.

- To define variable:

  ```ml
  (* lib/en.ml *)

  let v = "Hello, world!"
  ```

- To access this variable from `bin/main.ml`

  ```ml
  (* bin/main.ml *)

  let () = Printf.printf "%s\n" Hello.En.v
  ```

- If there is a `lib/hello.ml` file this won't work. Dune will consider this the whole **Hello** module. So to make En visible this should be created:

  ```ml
  (* lib/hello.ml *)

  module En = En
  ```

## Module Interface

- To declare module interface: 

  ```ml
  (* lib/en.ml *)

  val v : string
  ```

- If we replace `lib/en.ml` with the code below. Interface won't list the **hello** variable, so the variable becomes **private**.

  ```ml
  (* lib/en.ml *)

  let hello = "Hello" (* Unaccessable from outside *)
  let v = hello ^ ", world!"
  ```

  ```ml
  (* bin/main.ml *)
  let () = Printf.printf "%s\n" Hello.En.hello
  ```

  when compiled:

  ```sh
  $ opam exec -- dune build
  ```

  ```
  File "hello/bin/main.ml", line 1, characters 30-43:
  1 | let () = Printf.printf "%s\n" Hello.En.hello
                                    ^^^^^^^^^^^^^^
  Error: Unbound value Hello.En.hello
  ```


