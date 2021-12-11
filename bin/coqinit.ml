let touch name =
  if Sys.command (Printf.sprintf "touch %s" name) <> 0 then
    failwith (Printf.sprintf "unable to create file %s" name)

let cp src dst =
  if Sys.command (Printf.sprintf "cp %s %s" src dst) <> 0 then
    failwith (Printf.sprintf "unable to copy %s in %s" src dst)

let main =
  let makefile = Filename.concat (List.hd Coqinit_sites.Sites.data) "template_make.txt" in
  let proj = "_CoqProject" in
  touch proj;
  touch "Makefile";
  cp makefile "Makefile";
  let outx = open_out proj in
  Printf.fprintf outx "-R theories/ Thry\n";
  close_out outx