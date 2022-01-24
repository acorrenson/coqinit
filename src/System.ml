(** {1 System}
  Utils to create and copy files
*)

(** [touch filename] is an alias to call the unix [touch] command *)
let touch name =
  if Sys.command (Printf.sprintf "touch %s" name) <> 0 then
    failwith (Printf.sprintf "unable to create file %s" name)

(** [touch src dst] is an alias to call the unix [cp] command *)
let cp src dst =
  if Sys.command (Printf.sprintf "cp %s %s" src dst) <> 0 then
    failwith (Printf.sprintf "unable to copy %s in %s" src dst)


let is_coq name =
  Filename.extension name = ".v"

let is_coq_project name =
  Filename.basename name = "_CoqProject"