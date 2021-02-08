# Section 4. Eigenvalues and Eigenvectors
## Theorem 1. 
The eigenvalues of a triangular matrix are the entries on its main diagonal.  
(A - lambdaI)x = 0 has a nontrivial solution if and only if the equation has a free variable (not invertible)
## Theorem 2. 
If v1,...,vr are eigenvectors that correspond to distinct eigenvalues lambda1,...,labdar of an n x n matrix A, then the set {v1,...,vr} is linearly independent. 
## Theorem 3.
If n x n matrices A and B are similar, then they hace the same characteristic polynomial and hence the same eigenvalues (with the same multiplicities)
## Theorem 4. The Diagonalization Theorem
An n x n matrix A is diagonalizable if and only if A has n linearly independent eigenvectors.  
In fact, A = PDP-1, with D a diagonal matrix, if and only if the columns of P are n linearly independent eigenvectors of A.  
In this case, the diagonal entries of D are eigenvalues of A that correspond, respectively, to the eigenvectors in P.
## Theorem 5. 
An n x n matrix with n distinct eigenvalues is diagonalizable.  
## Theorem 6.
Let A be an n x n matrix whose distinct eigenvalues are lambda1, lambda2, ... , lambdap  
- For 1>= k <= p, the dimension of the eigenspace for lambdak is less than or equal to the multiplicity of the eigenvalue lambdak.  
- The matrix A is diagonalizable if and only if the sum of the dimensions of the distince eigenspaces equals n,  
and this happens if and only if the dimension of the eigenspace for each lambdak equals the multiplicity of lambdak.