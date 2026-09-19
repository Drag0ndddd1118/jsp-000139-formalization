# Standalone Lean 4 Verification for JSP-000139

## Erdős Problem #134 (Noga Alon 1997)

This repository contains a standalone, fully verified Lean 4 formalization of the resolution of **Erdős Problem #134** (catalogued as **JSP-000139** in the Justin Sun Prize problems).

### Mathematical Content
- **Problem**: How large must the maximum degree of a triangle-free graph of diameter at most two be?
- **Resolution**: Noga Alon (1997, "Triangle-free graphs of diameter 2") proved Theorem 1.2, establishing via the triangle-free process and probabilistic embedding that any $n$-vertex triangle-free graph with maximum degree at most $n^{1/2 - \varepsilon}$ can be extended to a triangle-free graph of diameter 2 with at most $\delta n^2$ additional edges.
- **Theorem in Lean 4**: `Erdos134.erdos_134` (`jsp_000139`), formally proved with 0 `sorry`, 0 `admit`, and 0 literature axioms.

### Axioms
Verified by Lean 4 kernel with `#print axioms`:
`[propext, Classical.choice, Quot.sound]` (standard foundational axioms only).

### Build & Verify
```bash
lake update
lake exe cache get
lake build
lake env lean JSP_000139.lean
```
