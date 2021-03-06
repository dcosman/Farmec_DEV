Feature: Checkout

  Scenario: Checkout with cash courier
    Given I open url"https://dev2.farmec.ro/autentificare.html"
    And I wait 2 seconds
    And I click on button with text "Am înţeles"
    And I should see an element with text "Adresa de email "
    And I login with "testare1984@gmail.com"/"parola"
    And I click on element with text "Toate produsele"
    And I wait 2 seconds
    And I click on Outlet
    And I wait 2 seconds
    And I click on link with class "Kit regenerare păr"
    And I wait 2 seconds
    And I click on link with text "Adaugă în coş"
    And I click on button with text "Finalizează comanda acum "
    And I click on  button2 with text "Finalizează"
    And I wait 2 seconds
    And I click on link with text "Continuare"
    And I click on label "Ramburs prin curier"
    And I click on link with text "Continuare"
    And I click on label with id "agree-wrapper"
    And I click on link with text "Finalizează "
    Then I should see an element with text "Finalizare comandă"

  Scenario: Checkout without login when the user enter on the web site
    Given I open url"https://dev2.farmec.ro/"
    And I open url"https://dev2.farmec.ro/autentificare.html?action=logout"
    And I wait 2 seconds
    And I click on element with text "Toate produsele"
    And I wait 2 seconds
    And I click on Outlet
    And I wait 2 seconds
    And I click on link with class "Kit regenerare păr"
    And I wait 2 seconds
    And I click on link with text "Adaugă în coş"
    And I click on button with text "Finalizează comanda acum "
    And I click on  button2 with text "Finalizează "
    And I login with "testare1984@gmail.com"/"parola"
    And I wait 2 seconds
    And I click on link with text "Continuare"
    And I click on label "Online cu card bancar"
    And I click on link with text "Continuare"
    And I wait 2 seconds
    And I click on label with id "agree-wrapper"
    And I click on link with text "Finalizează"
    And I wait 2 seconds
    And I fill in credit card information


  Scenario: Checkout successful
    Given I open url"https://dev2.farmec.ro/autentificare.html"
    And I click on element with text "Toate produsele"
    And I wait 2 seconds
    And I click on Outlet
    And I wait 2 seconds
    And I click on link with class "Kit regenerare păr"
    And I wait 2 seconds
    And I click on link with text "Adaugă în coş"
    And I click on button with text "Finalizează comanda acum "
    And I click on  button2 with text "Finalizează "
    And I wait 2 seconds
    And I click on  label "Editează" with class
    And I click on link with text "Continuare"
    And I wait 2 seconds
    And I click on link with text "Continuare"
    And I click on label "Online cu card bancar"
    And I click on link with text "Continuare"
    And I wait 2 seconds
    And I click on label with id "agree-wrapper"
    And I click on link with text "Finalizează"
    And I wait 2 seconds
    And I fill in credit card information

  Scenario: Checkout with payment order
    Given I open url"https://dev2.farmec.ro/autentificare.html"
    And I click on element with text "Toate produsele"
    And I wait 2 seconds
    And I click on Outlet
    And I wait 2 seconds
    And I click on link with class "Kit regenerare păr"
    And I wait 2 seconds
    And I click on link with text "Adaugă în coş"
    And I click on button with text "Finalizează comanda acum "
    And I click on  button2 with text "Finalizează"
    And I wait 2 seconds
    And I click on  label "Editează" with class
    And I click on link with text "Continuare"
    And I wait 2 seconds
    And I click on link with text "Continuare"
    And I click on label "Ordin de plată"
    And I click on link with text "Continuare"
    And I click on label with id "agree-wrapper"
    And I click on link with text "Finalizează"
    And I wait 2 seconds
    Then I should see an element with text "Finalizare comandă"