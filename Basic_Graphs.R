# Steps To make a dataframe
# replace => true is to get random values

studentid=c(1:25)
#this is to take random input
gender=sample(0:1,25,replace=TRUE)

studentinfo=data.frame(studentid,gender)
studentinfo

#Steps to change numbers to caption
studentinfo$gender=factor(studentinfo$gender,labels=c("male","female")

#To get basic information
summary(studentinfo)

#To plot a line graph
plot(studentinfo$age,type="l",xlab="Student id",ylab="Age",col="red")

#To draw a barplot
barplot(marks,names.arg=studentid,xlab="Student id",ylab="Marks",col="red")

#To draw a pie chart                          
pie(table(studentinfo$gender))
