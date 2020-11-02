#how to solve a maximization and minimization question and get a integer Solution
#in f.con => coefficient of rest of x1,x2,x3
#f.obj => coefficient of z 
#int.vec =>
#---------------------------------------------------------------------------------------------------------------------------------------
# Numeric vector giving the indices of variables that are required to be integer.
# The length of this vector will therefore be the number of integer variables.
#---------------------------------------------------------------------------------------------------------------------------------------


library(lpSolve) 
f.obj=c(4,-1,3)
f.con=matrix(c(2,1,1,1,1,1,4,3,2),nrow=3,byrow=TRUE)
f.dir=c("<=",">=","<=")
f.rhs=c(8,2,15)
ans=lp("max", f.obj, f.con, f.dir, f.rhs, int.vec = 1:3)
ans$solution