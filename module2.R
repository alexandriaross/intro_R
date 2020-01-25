assignment <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20,22)
##myMean <- function(assignment2) { return(sum(assignment)/length(someData)) }
##when the above myMean function runs, it will give an error
##as someData has not yet been defined
##myMean(assignment2)
##if someData is replaced with assignment
myMean <- function(assignment2) { return(sum(assignment)/length(assignment)) }
##then when
myMean(assignment2)
##run it will provide the mean
##to verify I'll run the following
mean(assignment)




                