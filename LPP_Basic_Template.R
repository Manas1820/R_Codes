# Max Z = 6.55x1+7.9x2
# ie: Min Z = -6.55x1-7.9x2 
#S.T.C 
# 0.25x1<=500 
# 0.25x1+0.5x2<=200
# 0.5x1+0.5x2<=200

obj.fun=function(x) -6.55*x[1] + -7.9*x[2] # z
plot(1,xlim=c(0,500),ylim=c(0,500),xlab="X axis",ylab="Y axis",lty=2,lwd=1.5,main="feasible set for linear optimization problem")#just to make graph
lines(c(2000,0),lwd=2,col="blue") # equation of line
lines(c(800,0),c(0,400),lwd=2,col="blue") # eq of line
lines(c(400,0),c(0,400),lwd=2,col="blue") # equation of ine
x.vert=c(0,400,0) # the polygon formed
y.vert=c(0,0,400) # the polygon formed 
polygon(x.vert,y.vert,col="green")
text(50,425,"optimal point(0,400)")
points(0,400,pch=19,col="red")
grad=function(x1,x2) c(-6.55,-7.9)
minim=constrOptim(theta=c(0.1,0.1),f=obj.fun,grad=grad,ui=matrix
(c(-0.25,0,-0.25,-0.5,-0.5,-0.5),nrow=3,byrow=TRUE),ci=matrix(c(-500,-200,-200)))


#to get the value of x and y
minim$par

#to get the final value
minim$val