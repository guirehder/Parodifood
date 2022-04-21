* Settings *

Resource   ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot

*Test Cases*
Deve realizar um novo pedido

    ${order_json}       Get JSON        order.json

    Go to Restaurants
    Choose Restaurant           ${order_json}


    FOR   ${product}   IN     @{order_json["products"]} 
        Add to cart            ${product["name"]}
        Should Add to cart     ${product["name"]}

    END

    Go Checkout
    Fill Data Customer              ${order_json["customer"]}
    Select Payment Option           ${order_json["payment"]}
    Pay order
    Order Should Be Completed
    
    Sleep       10s

