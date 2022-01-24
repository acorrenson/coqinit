(lang dune 2.8)

(using dune_site 0.1)

(name CoqInit)

(generate_opam_files true)

(package
 (name CoqInit)
 (synopsis "A cli tool to generate new coq projects")
 (sites
  (share data)))
