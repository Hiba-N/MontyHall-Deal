pick.door <- function(doors){
    door.number <- sample(doors, 1)
    return(door.number)
}

opened.door <- function(car.door, contestant.door){
    
    Montys.door <- sample(3, 1)

    while(Montys.door = car.door || Montys.door = contestant.door){
        Montys.door <- sample(3, 1)
    }   
    return(Montys.door)
}