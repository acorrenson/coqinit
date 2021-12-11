(lang dune 2.8)

(using dune_site 0.1)

(name coqinit)

(generate_opam_files true)

(package
 (name coqinit)
 (synopsis "A cli tool to generate new coq projects")
 (sites
  (share data)))
