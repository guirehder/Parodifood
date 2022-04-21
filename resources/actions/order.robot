* Settings *
Documentation   Ações da Funcionalidade de fechamento de pedido

* Keywords *
Go Checkout
    Click   text=Fechar Pedido

    ${element}      Set Variable        css=.page-header

    Wait for Elements State     ${element}        visible         10
    Get Text                    ${element}        contains        Finalize o seu pedido


Fill Data Customer
    [Arguments]     ${customer}

    Fill Text       css=input[placeholder="Nome"]           ${customer["name"]}
    Fill Text       css=input[placeholder="E-mail"]         ${customer["email"]}
    Fill Text       css=input[placeholder^="Confirmação"]   ${customer["email"]}
    Fill Text       css=input[placeholder="Endereço"]       ${customer["address"]}
    Fill Text       css=input[placeholder="Número"]         ${customer["number"]}

Select Payment Option
    [Arguments]     ${payment}


    IF          "${payment}" == "Dinheiro"
        
        Click       xpath=(//mt-radio//label)[1]//div

    ELSE IF     "${payment}" == "Cartão de Débito"
       
        Click       xpath=(//mt-radio//label)[2]//div

    ELSE IF     "${payment}" == "Cartão Refeição"    
        
        Click       xpath=(//mt-radio//label)[3]//div

    ELSE
        
        Fail    Incorrect payment type

    END

Pay order
    Click       text=Concluir Pedido
  

Order Should Be Completed
    Wait For Elements State     xpath=//h2[contains(text(),'Pedido Conluído')] 