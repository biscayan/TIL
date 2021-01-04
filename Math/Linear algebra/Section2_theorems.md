# Section 2. Matrix Algebra
## Theorem 1.
Let A, B, and C be matrices of the same size, and let r and s be scalars.  
- A + B = B + A  
- (A + B) + c = A + (B+C)  
- A + 0 = A  
- r(A + B) = rA + rB  
- (r + s)A = rA + sA  
- r(sA) = (rs)A  
## Theorem 2. 
Let A be an m x n matrix, and let B and C have sizes for which the indicated sums and products are defined.  
- A(BC) = (AB)C  
- A(B+ C) = AB + AC  
- (B + C)A = BA + CA  
- r(AB) = (rA)B = A(rB) for any scalar r  
- ImA = A = AIn  
### Warnings
- In general, AB is not BA  
- If AB = AC, then it is not true in general that B = C  
- IF AB = 0, then it is not true in general that either A = 0 or B = 0  
## Theorem 3.
Let A and B denote matrices whose sizes are appropriate for the following sums and products.  
- (AT)T = A  
- (A + B)T = AT + BT  
- For any scalar r, (rA)T = rAT  
- (AB)T = BTAT
## Theorem 4.
Let A = [[a b],[c d]]. If **ad - bc** is not 0, then A is invertible and A-1 = 1 / ad - bc * [[d -b],[-c a]]
## Theorem 5. 
Let A is an invertible n x n matrix, then for each b in Rn, the equation Ax = b has the unique solution x = A-1b.
## Theorem 6. 
- If A is an invertible matrix, then A-1 is invertible and **(A-1)-1 = A**.  
- If A and B are n x n invertible matrices, then so is AB, and the inverse of AB is the product of the inverses of A and B in the reverse order.  
That is, **(AB)-1 = B-1A-1**.  
- If A is an invertible matrix, then so is AT, and the inverse of AT is the transpose of A-1. That is, **(AT)-1 = (A-1)T**.
## Theorem 7.
An n x n matrix A is invertible if and only if A is row equivalent to In, and in this case,  
any sequence of elementary row operations that reduces A to In also transforms In into A-1.
## Theorem 8. The invertible matrix theorem
Let A be a square n x n matrix. Then the following statements are equivalent.  
- A is an invertible matrix  
- There is an n x n matrix C such that CA = I  
- The equation Ax = 0 has only the trivial solution  
- A has n pivot positions   
- A is row equivalent to the identity n x n matrix  
- There is an n x n matrix D such that AD = I  
- The equation Ax = b has at least one solution for each b in Rn   
- The columns of A span Rn  
- The linear transformation x -> Ax maps Rn onto Rn  
- The columns of A form a linearly independent set  
- The linear transformation x -> Ax is one-to-one  
- At is an invertible matrix  
## Theorem 9.
Let T : Rn -> Rn be a linear transformation and A be the standard matrix for T.  
Then T is invertivle if and only if A is an invertible matrix.  
In that case, the linear transformation S given by S(x) = A-1x is the unique function satisfying (1) S(T(x)) = x and (2) T(S(x)) = x
## Theorem 10. Column-row expansion of AB
If A is m x n and B is n x p, then  
AB = [col1(A) col2(A) ... coln(A)] * [[row1(B)], [row2(B)] ... [rown(B)]] = cola(A)row1(B) + ... + coln(A)rown(B)
## Theorem 11.
The null space of an m x n matrix A is a subspace of Rn.  
Equivalently, the set of all solutions to a system Ax = 0 of m homogeneous linear equations in n unknowns is in a subspace of Rn.
## Theorem 12.
The pivot columns of a matrix A form a basis for the column space of A.  
## Theorem 13. The rank theorem
If a matrix A has n columns, then rank A + dim nul A = n.  
## Theorem 14. The basis theorem
Let H be a p-dimensional subspace of Rn.  
Any linearly independent set of exactly p elements in H is automatically a basis for H.  
Also, any set of p elements of H that spans H is automatically a basis for H.  
If p elements are linearly dependent, the number of pivots in A is less than p. some b in H is not in col A.  
## Theorem. The invertible matrix theorem (continued)
Let A be an invertible n x n matrix. Then the following statements are equivalent.  
- The columns of A form a basis of Rn  
- Col A = Rn  
- dim Col A = n  
- rank A = n  
- dim Nul A = 0  
- Num A = {0}  