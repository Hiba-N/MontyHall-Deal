source("Monty.Hall.Utilities.R")
args <- commandArgs(trailingOnly = TRUE)


run.monty.hall <- function(args){

    allowed.arguments <- c("Keep", "Switch")

    if (length(args) != 1 || !(args[1] %in% allowed.arguments)) { #checking input by user
        cat("usage example: Rscript Run.Monty.Hall.R Switch/Keep\n")
        quit()
        }

    players.decision <- args[1]

    if(players.decision == "Keep"){ #running monty hall without switching door
        cat("When the door is not switched, the fraction of wins is", play.many.monty.halls(100, FALSE))
    }

    if(players.decision == 'Switch'){ #running monty hall with door switched
        cat("When the door is switched, the fraction of wins is", play.many.monty.halls(100, TRUE))
    }

}

run.monty.hall(args)


