* Settings *
Documentation       Ações da funcionalidade do carrinho de compras


* Keywords *
Add to cart 
    [Arguments]     ${name}

    Click       xpath=//span[text()="${name}"]/..//a[@class="add-to-cart"]


Should Add to cart
    [Arguments]     ${name}

    Wait For Elements State     css=#cart tr >> text=${name}     visible     5

Total Cart Should Be
    [Arguments]     ${total}

    Log          ${total}
    Get Text     xpath=//th[contains(text(),"Total")]/..//td     contains     ${total}