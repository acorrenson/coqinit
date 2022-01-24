(** {1 Commands}
  CoqInit commands implementation
*)

open System

type node = {
  path : string;
  coq_files : string list;
  coq_project : string option;
}

type state =
  | Node of node * state list

let rec scan_folder path =
  let dirs =
      Sys.readdir path
      |> Array.to_list
      |> List.map (Filename.concat path)
  in
  let coq_files = List.filter is_coq dirs in
  let coq_project = List.find_opt is_coq_project dirs in
  let subdirs = List.filter Sys.is_directory dirs in
  let substates =
    List.map scan_folder subdirs
  in
  Node ({ path; coq_files; coq_project }, substates)

type warning = { path : string; msg : string }

type status =
  | Clean
  | Conflict of string
  | Warning of warning

let check_state (_ : state) : status =
  failwith "[unimplemented]"
