Feature: Search for articles. 
  In order to make informed decisions.
  As a regisstered user of SERLER.
  I want to search for different articles based on different constrains. 
  
  Scenario: Basic Search - Found articles
    Given: I have opened main page
    When: I search for title contains "One12345"
    Then: I should see the list of artices with title contains "One12345"
    
    Scenario: Basic search - Not found articles
      Given: I have opened "http://serler-ashish3090.c9users.io:8080/"
      When: I search for title contains "Burger"
      Then: I should see the list of artices with title contains "Burger"
      
      Scenario: Advance Search - Go to new advance search
        Given: I have opened "http://serler-ashish3090.c9users.io:8080/searches/new"
        When: I click on advance search
        Then: I should be on new query page with title "Advance Search"
        