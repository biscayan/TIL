# Linear algebra theorems
## Theorem 1. Uniqueness of the Reduced Echelon Form
Each matrix is row equivalent to **one and only one** reduced echelon matrix 
## Theorem 2. Existence and Uniqueness Theorem
A linear system is consistent if and only if the rightmost column of the augmented matrix is not a pivot column  
That is, if and only if an echelon form of the augmented matrix has no row of the forms like **[0 ... 0 b] with b is nonzero**.  
If a linear system is consistent, then the solution set contains either (1) a **unique** solution, when there are no free variables,  
or (2) **infinitely many** solutions, when there is at least one free variables.
## Theorem 3. A is m x n matrix, with columns a1 ... an b is in Rm
- Matrix equation: Ax = b  
- Vector equation: x1a1 + x2a2 + ... + xnan = b  
- Augmented matrix: [a1 a2 ... an b]  
have the same solution set
## Theorem 4. A is m x n matrix, with columns a1 ... an
The followings are all true or all false  
(1) For each b in Rm, Ax = b has a solution.  
(2) Each b in Rm is a linear combination of the columns of A.  
(3) The columns of A span Rm.  
(4) A has a pivot position in every row.  
## Theorem 5. If A is an m x n matrix, u and v are vectors in Rn, and c is a scalar
- A(u + v) = Au + Av  
- A(cu) = c(Au)  
## Theorem 6.
Suppose Ax = b is consistent and lep p be a solution  
Then the solution set of Ax = b is the set of all vectors of the form w = p + vh  
where vh is any solution of the homogeneous equation Ax = 0
## Theorem 7.
An indexed set S = {v1 ... vp} of two or more vectors is linearly dependent  
if only if at least one of the vectors in S in a linear combination of the others.  
In fact, if S in linearly dependent and v1 is not 0,  
then some vj (with j>1) is a linear combination of the preceding vectors v1 ... vj-1.  
## Theorem 8. 
If a set contains more vectors than there are entries in each vector, then the set is linearly dependent.  
## Theorem 9. 
If a set contains the zero vector, then the set is linearly dependent.
## Theorem 10.
Let T: Rn -> Rm be a linear transformation. Then there exists a unique matrix A such that  
T(x) = Ax for all x in Rn  
In fact, A is the m x n matrix whose j-th column is the vector T(ej), where ej is the j-th column of the identity matrix in Rn:  
A = [T(e1) ... T(en)], A is standard natrix for the linear transformation T.
## Theorem 11.
Let T: Rn -> Rm be a linear transformation.  
Then T is one-to-one if and only if the equation T(x) = 0 has only trivial solution. 
## Theorem 12.
Let T: Rn -> Rm be a linear transformation and let A be the standard matrix for T.  
Then, T maps Rn onto Rm if and only if the columns of A span Rm.  
T is one-to-one if and only if the columns of A are linearly independent. 