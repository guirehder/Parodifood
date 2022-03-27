* Settings *

Resource   ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot


* Test Cases *
Deve adicionar um item ao carrinho
 
    &{restaurant}       Create Dictionary       restaurant=STARBUGS COFFE     desc=Nada melhor que um café pra te ajudar a resolver um bug.

    Go to Restaurants
    Choose Restaurant       ${restaurant} 
    Add to cart             Starbugs 500 error
    Should Add to cart      Starbugs 500 error
    Total Cart Should Be    15,60
    

Deve adicionar 3 itens ao carrinho
    [tags]            temp
 
    ${cart_json}        Get JSON        cart.json

    Go to Restaurants
    Choose Restaurant       ${cart_json}

    FOR   ${products}   IN     @{cart_json["products"]} 
        Add to cart            ${products["name"]}
        Should Add to cart     ${products["name"]}

    END

    Total Cart Should Be    ${cart_json["total"]}



