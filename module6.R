#Consider A=matrix(c(2,0,1,3), ncol=2) and B=matrix(c(5,2,4,-1), ncol=2).
#a) Find A + B
#b) Find A - B
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)
A
B
A+B
A-B

#2. Using the diag() function to build a matrix of size 4 with the following values in the diagonal 4,1,2,3.
C <- c(4,1,2,3)
diag(C)
#or maybe a more concise version
#diag(x) <- value
diag(c(4,1,2,3))

#3. Generate the following matrix:
  ## [,1] [,2] [,3] [,4] [,5]
  ## [1,] 3 1 1 1 1
  ## [2,] 2 3 0 0 0
  ## [3,] 2 0 3 0 0
  ## [4,] 2 0 0 3 0
  ## [5,] 2 0 0 0 3
  #Hint: You can use the command diag() to build it.
#diag(x = 1, nrow, ncol, names = TRUE)
D <- diag(3, 5) 
D[1, 2:5]= 1 
D[2:5, 1]= 2
D
#I played around trying to create the matrix using diag() 
#using one block of code, but couldn't quite get it right
