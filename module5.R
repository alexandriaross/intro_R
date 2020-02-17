A <- matrix(1:100, nrow=10)  
B <- matrix(1:1000, nrow=10)
A
B
#solve(A)
#Error message Error in solve.default() : 
#Lapack routine dgesv: system is exactly singular: U[3,3] = 0
det(A)

#AI  <- inv(A)
#t(A)
#solve(A)

#solve(B)
#Error in solve.default(B) : 'a' (10 x 100) must be square
#det(B)

C <- matrix(1:25, nrow=5)
C
#solve(C)
#det(C)
D <- matrix(1:4, nrow =2)
D
solve(D)
det(D)
E <- matrix(1:16, nrow =4)
E
#solve(E)
y=c(3,4)
solve(D,y)
f <- c(10, 9, 8, 7, 6, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 10)
F <- matrix(f, nrow=4)
F
det(F)
solve(F)
