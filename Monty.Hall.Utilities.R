# 1a) Create a function called pick.door. 
# This function will randomly pick a door from 3 possible doors. 
# It will return the number of the chosen door. 
# The sample() function might be useful here.

pick.door <- function(doors){
    door.number <- sample(doors, 1)
    return(door.number)
}