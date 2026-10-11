# Formalization of JSP-000139 (Erdős Problem #134)

## Problem Overview

**Catalog ID:** [JSP-000139](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0101-0200.md#JSP-000139)  
**Erdős Problem:** [#134](https://www.erdosproblems.com/134)  
**Mathematical Area:** Graph Theory / Extremal Graph Theory  

### Problem Statement

How large must the maximum degree of a triangle-free graph of diameter at most two be?

### Resolution

Resolved by Noga Alon (1997, "Triangle-free graphs of diameter 2"), proving Theorem 1.2: any triangle-free graph on n vertices with maximum degree at most n^(1/2 - ε) can be embedded into a triangle-free graph of diameter 2 adding at most δ n^2 edges.

## Formalization Details

- **Contract Statement:** `Challenge.lean` defines `JSP000139.jsp000139Statement`
- **Solution Theorem:** `Submission.lean` proves `JSP000139.jsp_000139_solved : jsp000139Statement`
- **Underlying Formalization:** `ErdosProblems/Erdos134.lean` provides complete, fully closed proofs.
- **Axioms Check:**
  `#print axioms JSP000139.jsp_000139_solved` yields strictly:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`, zero custom axioms.

## Build & Verification Instructions

```bash
lake exe cache get
lake build
python3 check.py
```
