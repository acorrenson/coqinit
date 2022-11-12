(lang dune 3.5)

(using dune_site 0.1)

(name coqinit)

(generate_opam_files true)

(package
 (name coqinit)
 (synopsis "A CLI tol to generate Coq projects")
 (description
  "Coqinit is a simple command line tool to generate coq projects")
 (sites
  (share data)))

; (package
;  (name coqinit)
;  (synopsis "A cli tool to generate new coq projects")
;  (sites
;   (share data)))
