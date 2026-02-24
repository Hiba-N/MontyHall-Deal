
#samples a random number between 1 to 3 indicating the door number
pick.door <- function(){
    door.number <- sample(3, 1)
    return(door.number)
}

#selects a door for Monty
opened.door <- function(car.door, contestant.door){
    
    Montys.door <- sample(3, 1)

    #ensuring Monty's door is other than contestant door or door with car behind it
    while(Montys.door == car.door || Montys.door == contestant.door){
        Montys.door <- sample(3, 1)
    }   
    return(Montys.door)
}

#playing the monty hall game
play.monty.hall <- function(player.switches){
    all.doors <- c(1,2,3)
    car.door <- pick.door() #car door picked
    contestant.door <- pick.door() #contestant door picked
    montys.door <- opened.door(car.door, contestant.door) #montys door picked
    if(player.switches){ #switching if player wants to
        contestant.door <- all.doors[-c(montys.door, contestant.door)]
    }

    if(contestant.door == car.door){ #checking if players door has a car
        win.status <- TRUE
    }
    else{
        win.status <- FALSE
    }
    return (win.status) 
}


play.many.monty.halls <- function(total.plays, player.switches){
    play.count <- 0
    total.wins <- 0
    while (play.count < total.plays){ #playing the game and summing up total wins
        
        win.status <- play.monty.hall(player.switches)
        total.wins <- win.status + total.wins
        play.count <- play.count + 1 #counter to track total wins
    }

    winning.fraction <- total.wins/total.plays #calculating fraction of wins
    return(winning.fraction)
}