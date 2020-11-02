#Steps to solve Assignment problem
#You can always toggle between maximum and minimum profit

library(lpSolve)
cost.mat=matrix(c(62,78,50,111,82,71,84,61,73,59,87,92,111,71,81,48,64,87,77,80,0,0,0,0,0),nrow=5,byrow=TRUE) 
lpassign=lp.assign(cost.mat, direction = "max") 
lpassign$solution 
lpassign$objval