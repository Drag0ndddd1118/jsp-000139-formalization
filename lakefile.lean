import Lake
open Lake DSL

package "jsp-000139-formalization" where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib ErdosProblems

@[default_target]
lean_lib «JSP_000139»
