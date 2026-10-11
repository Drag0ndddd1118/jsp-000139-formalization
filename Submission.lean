import Challenge

namespace JSP000139

/--
Solution theorem for JSP-000139 (Erdős Problem #134).
-/
theorem jsp_000139_solved : jsp000139Statement :=
  fun hε hδ ↦ Erdos134.erdos_134 hε hδ

#print axioms jsp_000139_solved

end JSP000139
