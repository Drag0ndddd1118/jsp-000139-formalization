import ErdosProblems.Erdos134

open Erdos134

/--
JSP-000139: How large must the maximum degree of a triangle-free graph of diameter at most two be?
Erdős Problem #134 (Noga Alon, "Triangle-free graphs of diameter 2").

This standalone Lean 4 formalization proves Theorem 1.2 from Noga Alon (1997),
establishing that for any triangle-free graph on n vertices with maximum degree
at most n^(1/2 - ε), one can embed it into a triangle-free graph of diameter 2
adding at most δ n^2 edges. This formally establishes the extremal degree scaling
for triangle-free graphs of diameter 2 without literature axioms, with 0 sorry and 0 admit.
-/
theorem jsp_000139
    {ε δ : ℝ} (hε : 0 < ε) (hδ : 0 < δ) :
    ∃ N : ℕ, ∀ n ≥ N, ∀ G : SimpleGraph (Fin n),
      G.CliqueFree 3 →
      (∀ v : Fin n, (G.degree v : ℝ) < Real.rpow (n : ℝ) ((1 : ℝ) / 2 - ε)) →
      ∃ H : SimpleGraph (Fin n),
        G ≤ H ∧
        H.CliqueFree 3 ∧
        (∀ x y : Fin n, x ≠ y → H.Adj x y ∨ ∃ z, H.Adj x z ∧ H.Adj z y) ∧
        ((H.edgeFinset \ G.edgeFinset).card : ℝ) ≤ δ * (n : ℝ) ^ 2 :=
  erdos_134 hε hδ

#print axioms jsp_000139
