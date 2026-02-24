pick.door <- function(doors){
    door.number <- sample(doors, 1)
    return(door.number)
}

opened.door <- function(car.door, contestant.door){
    door.options <- c(1,2,3)
    door.options <- door.options[-c(car.door, contestant.door)]
    Montys.door <- sample(door.options, 1)
    return(Montys.door)
}