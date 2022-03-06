* Settings *
Documentation       Arquivo base do projeto (tudo começa aqui)

Library     Browser

Resource    actions/search.robot

* Keywords *  
Start Session
    New Browser     chromium        false
    New Page        https://parodifood.herokuapp.com/ 
    #Checkpoint
    Get Text        css=span:nth-child(1)    contains   Nunca foi tão engraçado pedir comida