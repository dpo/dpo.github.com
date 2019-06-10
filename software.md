---
layout: page
title: Software
---

# A Julia Ecosystem for Optimization

A modeling and solution environment for continuous optimization in the high-level and high-performance [Julia](http://julialang.org) language.
Though still young, the environment provides access to the [CUTEst](http://ccpforge.cse.rl.ac.uk/gf/project/cutest/wiki) and [AMPL](http://www.ampl.com) modeling environments and can be used alongside [JuMP](https://github.com/JuliaOpt/JuMP.jl).

Important features include lazy linear operators, a collection of Krylov methods, a problem collection, and interfaces to high-performance linear algebra kernels.
Several building blocks for optimization are available and complete solvers are in the making.

<a href="https://github.com/JuliaSmoothOptimizers">
  <i class="fa fa-github fa-2x" alt="Github" title="Github" aria-hidden="true" style="color:#404040">
  </i>
</a>

# A Python Ecosystem for Optimization

A complete modeling and solution environment for continuous optimization in the high-level [Python](http://www.python.org) language with computationally-intensive parts written in [Cython](http://www.cython.org).
Distributed across several modular packages, the environment features modeling facilities, including automatic differentiation, limited-memory quasi-Newton approximations, discretized PDE-constrained problems via [FEniCS](http://fenicsproject.org), building blocks for writing optimization solvers, efficient linear algebra functionalities, and several complete solvers.

<a href="https://github.com/PythonOptimizers">
  <i class="fa fa-github fa-2x" alt="Github" title="Github" aria-hidden="true" style="color:#404040">
  </i>
</a>

# LLDL: Limited-Memory LDL Factorization

LLDL implements a limited-memory scheme for symmetric matrices that possess a \\(LDL^T\\) factorization, i.e., with \\(D\\) diagonal. Symmetric quasi-definite matrices fall into this category.
LLDL is applicable to symmetric indefinite matrices that are not quasi definite, or more generally do not admit a \\(LDL^T\\) factorization.
In this case, it computes an incomplete factorization of a nearby matrix.
LLDL is chiefly used to produce preconditioners for solving symmetric indefinite systems using an iterative method such as [MINRES](http://web.stanford.edu/group/SOL/software/minres).

<a href="https://github.com/optimizers/lldl">
  <i class="fa fa-github fa-2x" alt="Github" title="Github" aria-hidden="true" style="color:#404040">
  </i>
</a>

# CUTEr / CUTEst

A versatile testing environment for optimization and linear algebra solvers.
The package contains a collection of test problems, along with Fortran 77, Fortran 90/95, C/C++ and Matlab tools intended to help developers design, compare and improve new and existing solvers.
It is usually associated to SIFDecode, a decoder for problems modeled in the [SIF](http://www.numerical.rl.ac.uk/lancelot/sif/sifhtml.html)—a generalization of the [MPS](https://en.wikipedia.org/wiki/MPS_(format)) modeling language for linear programs.
CUTEst realizes the interface between such problems and a variety of popular solvers.

<a href="https://github.com/ralna/CUTEst">
  <i class="fa fa-home fa-2x" alt="Home" title="Home" aria-hidden="true" style="color:#404040">
  </i>
</a>
<a href="https://en.wikipedia.org/wiki/CUTEr" style="text-decoration:none">
  <i class="fa fa-wikipedia-w fa-2x" alt="Wikipedia" title="Wikipedia" style="color:#404040">
  </i>
</a>

# GALAHAD

A thread-safe library of Fortran 90 packages for nonlinear optimization problems.
Areas currently covered by the library include unconstrained and bound-constrained optimization, quadratic programming, nonlinear programming, systems of nonlinear equations and inequalities, and nonlinear least squares problems.
The library also contains a quadratic program preprocessor and a Lanczos-based method for trust-region subproblems.

<a href="https://github.com/ralna/GALAHAD">
  <i class="fa fa-home fa-2x" alt="Home" title="Home" aria-hidden="true" style="color:#404040">
  </i>
</a>
<a href="https://en.wikipedia.org/wiki/Galahad_library" style="text-decoration:none">
  <i class="fa fa-wikipedia-w fa-2x" alt="Wikipedia" title="Wikipedia" style="color:#404040">
  </i>
</a>
