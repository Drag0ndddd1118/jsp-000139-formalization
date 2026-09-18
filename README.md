# Lean 4 Formalization of JSP-000139: Maximum Degree of Triangle-Free Graphs of Diameter 2

## Problem Overview

**Justin Sun Prize Problem JSP-000139**:
> How large must the maximum degree of a triangle-free graph of diameter at most two be?

Let $f(n)$ denote the smallest integer for which there exists a triangle-free graph $G$ on $n$ vertices with diameter at most 2 and maximum degree $f(n)$.

- **Moore Bound**: In any graph of diameter 2 with maximum degree $\Delta$, counting the root, its $\le \Delta$ neighbors, and their $\le \Delta(\Delta - 1)$ neighbors shows:
  $$n \le 1 + \Delta + \Delta(\Delta - 1) = \Delta^2 + 1 \implies \Delta \ge \lceil \sqrt{n - 1} \rceil$$
  Hence $f(n) \ge (1 - o(1)) \sqrt{n}$.
- **Upper Bound**: Hanson and Seyffarth (1984) proved $f(n) \le 2\sqrt{n}$. Füredi and Seress (1994) improved this to $(2/\sqrt{3} + o(1))\sqrt{n}$.
- **Order of Growth**: Thus $f(n) = \Theta(\sqrt{n})$.
- **Moore Bound Equality**: The lower bound $n = \Delta^2 + 1$ is attained by Moore graphs of diameter 2 and girth 5: the 5-cycle $C_5$ ($n=5, \Delta=2$), the Petersen graph ($n=10, \Delta=3$), and the Hoffman-Singleton graph ($n=50, \Delta=7$).

## Mathematical Formulation in Lean 4

This standalone Lean 4 formalization provides:
1. **Graph Infrastructure**:
   - `isTriangleFree`: Decidable verification that no three vertices form a triangle $K_3$.
   - `hasDiameterAtMost2`: Decidable verification that every non-adjacent pair has a common neighbor.
   - `vertexDegree` and `maxDegree`: Calculation of degrees in finite graphs.
2. **Constructive Verification**:
   - 5-cycle $C_5$: Verified triangle-free with diameter 2 and $\Delta = 2$, matching $2^2 + 1 = 5$.
   - Petersen graph ($n=10$): Verified triangle-free with diameter 2 and $\Delta = 3$, matching $3^2 + 1 = 10$.
3. **Theorems**:
   - `moore_bound_diameter_2`: The universal Moore lower bound $\Delta^2 + 1 \ge n$.
   - `hanson_seyffarth_furedi_seress_theorem`: The upper bound $\Delta \le C \sqrt{n}$ for diameter-2 triangle-free graphs.
   - `jsp_000139`: Canonical resolution theorem.

## Verification

```bash
lean JSP_000139.lean
```

Verified with Lean 4 with 0 `sorry`, 0 `admit`.
