Feature: Search for articles
  In order to make informed decisions
  As a registered user of Serler
  I want to search for empritical evidence on different methods based on different constraints
  
  Scenario: Search articles
    Given I have opened root path
    When I search for title contains "Design"
    And I click the search button
    Then I should see a list of articles
   
   
    
  # Scenario: Basic search - No data available in table
  #   Given I have opened "http://mytest-hualizhou.c9users.io:8080/"
  #   When I search for title contains "Dog"
  #   Then I should not see a list of articles with title contains "Dog"
    
   
  # Scenario: Advanced search - Go to new Advanced Search
  #   Given I have opened "http://mytest-hualizhou.c9users.io:8080/"
  #   When I click on "Advanced Search"
  #   Then I should be on the new page with title "Advanced Search"
    
  # Scenario: Advanced search - Add more search condition
  #   Given I am on the link: "http://mytest-hualizhou.c9users.io:8080/"
  #   When I click the add button twice
  #   Then I can see 3 set of query

  # Scenario: Advanced search - Back button
  #   Given I am on the link: "http://mytest-hualizhou.c9users.io:8080/"
  #   When I click the back button
  #   Then I return to the home page with title "Search Result"
  
       
       
      