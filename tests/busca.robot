* Settings *

Resource   ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot

* Test Cases *
Deve buscar um único restaurante
    Go to Restaurants
    Search By                           debuger
    Restaurant Should be visible        DEBUGER KING
    Restaurant Count Should be          1
    

Deve buscar por uma categoria
    Go to Restaurants
    Search By                           cafe
    Restaurant Should be visible        STARBUGS COFFE
    

Deve buscar todos os restaurantes
    Go to Restaurants
    Search By                           a
    Restaurant Count Should be          5
   