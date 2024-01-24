print("Welcome to the เป่ายิงฉุบ game")
hands = c("hummer", "scissor", "paper")
player_score <- 0
computer_score <- 0
games <- function(){
    while(TRUE){
        start_game <- readline("Do you want to play or quit : ")
        if (start_game == "play"){
            player_hands <- readline("Please choose hummer,scissor,paper : ")
            computer_hand <- sample(hands,1)
            flush.console()
            if((player_hands == "hummer" & computer_hand == "scissor") |
               (player_hands == "scissor" & computer_hand == "paper") |
               (player_hands == "paper" & computer_hand == "hummer")){
                print(paste("player hand :",player_hands))
                print(paste("computer hand :",computer_hand))
                print("You win")
                player_score = player_score + 1
                computer_score = computer_score + 0
               } else if ((player_hands == "hummer" & computer_hand == "hummer") |
                          (player_hands == "scissor" & computer_hand == "scissor") |
                          (player_hands == "paper" & computer_hand == "paper")) {
                           print(paste("player hand :",player_hands))
                           print(paste("computer hand :",computer_hand))
                           print("Draw")
                           player_score = player_score + 0
                           computer_score = computer_score + 0
               } else if ((player_hands == "hummer" & computer_hand == "paper") |
                          (player_hands == "scissor" & computer_hand == "hummer") |
                          (player_hands == "paper" & computer_hand == "scissor")) {
                           print(paste("player hand :",player_hands))
                           print(paste("computer hand :",computer_hand))
                           print("You lose")
                           player_score = player_score + 0
                           computer_score = computer_score + 1
               } else {

               }
               flush.console()
        } else {
            print(paste("player_score",player_score))
            print(paste("computer_score",computer_score))
            break
        }
}
}
games()
