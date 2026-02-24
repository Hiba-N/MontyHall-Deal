source("Monty.Hall.Utilities.R")
args <- commandArgs(trailingOnly = TRUE)

allowed.arguments <- c("Keep", "Switch")

if (length(args) != 1 || !(args[1] %in% allowed.arguments)) {
    cat("usage example: Rscript Run.Monty.Hall.R Switch/Keep\n")
    quit()
    }

players.decision <- args[1]


if(players.decision == "Keep"){
    cat("When the door is not switched, the fraction of wins is" + play.many.monty.halls(100, FALSE))
}

elif(players.decision == 'Switch'){
    cat("When the door is switched, the fraction of wins is" + play.many.monty.halls(100, TRUE))
}


