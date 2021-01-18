# Section 3. Determinants
## Theorem 1.
The determinant of an n x n matrix can be computed by a cofactor expansion across any row or down any column.  
The expansion across the ith row using the cofactor is det A = ai1Ci1 + ai2Ci2 + ... + ainCin  
The cofactor expansion down the jth column is det A = a1jC1j + a2jC2j + ... + anjCnj
## Theorem 2.
If A is a triangular matrix, then det A is the product of the extries on the main diagonal of A.  
## Theorem 3. Row Operations
Let A be a suqre matrix  
- If a multiple of one row of A is added to another row to produce a matrix B (replacement), then **det B = det A**.   
- If two rows of A are interchanged to produce B (interchange), then **det B = - det A**.  
- If one row of A is multiplied by k to produce B (scaling), then **det B = k * det A**.  
## Theorem 4. 
A square matrix A is invertible if and only if det A is not 0.  
## Theorem 5. 
If A is an n x n matrix, then det AT = det A.  
## Theorem 6. Multiplicative Property
If A and B are n x n matrices, then det AB = (det A)(det B)  
det A + B is not det A + det B in general.
## Theorem 7. Cramer's Rule
Let A be an invertible n x n matrix. For any b in Rn, the unique solution x of Ax = b has entries given by xi = det Ai(b) / det A, i = 1,2,...,n
## Theorem 8. An Inverse Formula
Let A be an invertible n x n matrix. Then A-1 = 1/det A * adjugate of A
## Theorem 9.
If A is a 2 x 2 matrix, the **area** of the parallelogram determined by the columns of A is |det A|.  
If A is a 3 x 3 matrix, the **volume** of the parallelepiped determined by the columns of A is |det A|.
## Theorem 10.
Let T : R2 -> R2 be a linear transformation determined by a 2 x 2 matrix A.  
If S is a parallelogram in R2, then {area of T(S)} = |det A| * {area of S}  
If T is determined by a 3 x 3 matrix A, and if V is a parallelepiped in R3, then {volume of T(V)} = |det A| * {volume of V}  