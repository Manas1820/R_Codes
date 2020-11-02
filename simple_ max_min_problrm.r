# Maximize 4x-y+3z
# Subject to  2x + y + z <= 4
#             x + y + z >= 5
#             4x + 3y + 2z >= 0

# -------------------------------------------

library(lpSolve)
f.obj=c(4,-1,3) # objective function constraints 
f.con=matrix(c(2,1,1,1,1,1,4,3,2),byRow=TRUE,nrow=3)  # LHS in form of matrix
f.dir=c("<=",">=",">=")  # all signs
f.rhs=c(4,5,0)  # RHS
answer=lp("max",f.obj,f.con,f.dir,f.rhs,int.vec=1:3) # computation || you can change max to min depending on question
answer$solution # final result
