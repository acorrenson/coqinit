open Lib.System
open Coqinit_sites

let () =
  let makefile = Filename.concat (List.hd Sites.data) "_Makefile" in
  let proj = "_CoqProject" in
  touch proj;
  touch "Makefile";
  cp makefile "Makefile";
  let outx = open_out proj in
  Printf.fprintf outx "-R theories/ Thry\n";
  close_out outx