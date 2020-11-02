library(markovchain)
library(diagram)
trans_matrix = matrix(c(0.1,0.5,0.4,0.6,0.2,0.2,0.3,0.4,0.3)
, byrow=TRUE, nrow=3) # only change this
disc_trans = new("markovchain",transitionMatrix=trans_matrix,
states=c("State 1","State 2","State 3"), name="MarkovChain")

#Display the disc_trans
disc_trans
#will display the matrix

stateNames = c("State 1","State 2","State 3")
row.names(trans_matrix) = stateNames
colnames(trans_matrix) = stateNames
plotmat(trans_matrix, pos = c(1,2), lwd = 1, box.lwd = 2, cex.txt =
0.8, box.size = 0.1, box.type = "circle", box.prop = 0.5,box.col = "lig
ht blue", arr.length=.1, arr.width=.1, self.cex = .6, self.shifty = -
.01, self.shiftx = .14, main = "Markov Chain")

#Dont change any thing in the above code just input the values in the matrix


initialState = c(0.7,0.2,0.1) # will be provided in the question
steps = 2 # can be a desired power of P
finalState = initialState*disc_trans^steps

#To get the final state
finalState


#To get the steady State
steadyStates(disc_trans)
