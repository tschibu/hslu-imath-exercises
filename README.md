# HSLU  - Modul: IMATH (Informatik Mathematik) - HS2019
HSLU - Lucerne University of Applied Sciences and Arts

Modul: IMATH (Informatik Mathematik) / HS2019

## Content / Course material
    
- `root`: per SW a jupyter notebook (with octave or octave cli) or python-files
    - `Week_01` - Linear Algebra Part 1: From vectors to matrices and how to decompose matrices
    - `Week_02` - Linear Algebra Part 2: The four fundamental subspaces and the complete solution of a linear system of equations
    - `Week_03` - Linear Algebra Part 3: Determinant, Eigenvalues and -vectors, Singular Value Decomposition (SVD) _useful in Machine Learning_
    - `Week_04` - Linear Algebra Part 4: Projective Geometry _important in Computer Graphics_
    - `Week_05` - Multivariable Calculus Part 1: Graphing, Partial Derivatives, Gradient, Directional Derivative
    - `Week_06` - Multivariable Calculus Part 2: (Total) Differential, Linearisation inkl. Application, Chain Rule
    - `Week_07` - Multivariable Calculus Part 3: Higher-order Partial Derivatives, Critical Points, Optimization _useful in Machine Learning_
    - `Week_08` - Numerics Part 1: Sources of errors, solving linear systems using direct and iterative methods
    - `Week_09` - Numerics Part 2: Numerical integration, differentiation, approximation and extrapolation
    - `Week_10` - Numerics Part 3: Approximation using trigonometric functions and splines
    - `Week_11` - Numerics Part 4: The Discrete Fourier Transformation and the Fast Fourier Transform (FFT)
    - `Week_12` - Ordinary Differential Equations (ODEs) Part 1: Definitions, Reduction of the Order
    - `Week_13` - Ordinary Differential Equations (ODEs) Part 2: How to numerically solve a system of ODEs
    - `Week_13` - Ordinary Differential Equations (ODEs) Part 3: some illustrative examples
    - `Week_99` - Exam / MEP Preparation

## Install Octave kernel for Jupyter

### macOS

1. Create virtual env using conda or other similar tools  

2. Install [Jupyter Notebook](http://jupyter.readthedocs.org/en/latest/install.html) and [GNU Octave](https://www.gnu.org/software/octave/download.html)

```bash
brew install octave
brew install gnuplot
```

3. Install octave kernel

```bash
pip install octave_kernel
```

4. Check if the kernel is available

```bash
$ jupyter kernelspec list
Available kernels:
  octave     /Users/user/Library/Jupyter/kernels/octave
  python3    /Users/user/Applications/anaconda3/envs/imath/share/jupyter/kernels/python3
```

5. Start Jupyther

`jupyter notebook` or `jupyter lab`, if available

`In the notebook interface, select Octave from the 'New' menu`

