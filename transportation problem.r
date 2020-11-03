# Touché Young has three auditors. Each can work as many as 160 hours during the next
# month, during which time three projects must be completed. Project 1 will take 130 hours;
# project 2, 140 hours; and project 3, 160 hours. The amount per hour that can be billed for
# assigning each auditor to each project is given in the table below. Formulate a balanced
# transportation problem to maximize total billings during the next month.

library(lpSolve)
#calues taken from the table given with table(actually I addde random numbers)
costs = matrix(c(123,13,13,0,1,431,1,0,4,24,21,0),nrow=3,byRow=TRUE)
row.signs=c("<=","<=","<=")
row.rhs=c(160,150,180)
col.signs=c(">=",">=",">=",">=")
col.rhs=c(123,342,34,42)
lptrans = lp.transport(costs,"max",row.signs,row.rhs,col.signs,col.rhs)
lptrans$solution
lptrans$objval