import ErdosProblems.Erdos134

namespace JSP000139

open Erdos134

attribute [local instance] Classical.propDecidable

/--
Formal statement for JSP-000139 (Erdős Problem #134):
How large must the maximum degree of a triangle-free graph of diameter at most two be?

Resolved by Noga Alon (1997, Theorem 1.2), establishing that for any triangle-free graph
on n vertices with maximum degree at most n^(1/2 - ε), one can embed it into a triangle-free
graph of diameter 2 adding at most δ n^2 edges.
-/
def jsp000139Statement : Prop :=
  ∀ {ε δ : ℝ}, 0 < ε → 0 < δ →
    ∃ N : ℕ, ∀ n ≥ N, ∀ G : SimpleGraph (Fin n),
      G.CliqueFree 3 →
      (∀ v : Fin n, (G.degree v : ℝ) < Real.rpow (n : ℝ) ((1 : ℝ) / 2 - ε)) →
      ∃ H : SimpleGraph (Fin n),
        G ≤ H ∧
        H.CliqueFree 3 ∧
        (∀ x y : Fin n, x ≠ y → H.Adj x y ∨ ∃ z, H.Adj x z ∧ H.Adj z y) ∧
        ((H.edgeFinset \ G.edgeFinset).card : ℝ) ≤ δ * (n : ℝ) ^ 2

end JSP000139
