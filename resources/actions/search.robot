* Settings *

Documentation       Ações da funcionalidade de busca de restaurantes

* Variables *
${DIV_BOX_RESTAURANT}       css=div[class="place-info-box"][style="opacity: 1;"]

* Keywords *  
Go to Restaurants
    Click           text=Estou com fome!
    Get Text        css=h1 strong       contains      Ta na hora de matar a fome!

Search By
    [Arguments]     ${value}
    Click           css=.search-link
    Fill Text       css=input[formcontrolname="searchControl"]      ${value}  

Restaurant Should be visible
    [Arguments]     ${name}
    Wait For Elements State     ${DIV_BOX_RESTAURANT}       visible         10
    Get Text                    ${DIV_BOX_RESTAURANT}         contains        ${name}


Restaurant Count Should be
    [Arguments]     ${qtd}
    #Wait For Elements State     ${DIV_BOX_RESTAURANT}       visible         5
    Get Element Count       ${DIV_BOX_RESTAURANT}         equal       ${qtd}