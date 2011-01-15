Feature: Topics
  In order to see a list of potential topics for meetings
  people need to be able to create and edit them

  Scenario: Getting to the new topic page
    When I go to the topics page
    And I follow "New Topic"
    Then I should see a "Create" button

  Scenario: Creating a topic
    Given I go to the topics page
    And I follow "New Topic"
    When I fill in "Title" with "Rails Fixtures"
    And I fill in "Description" with "Introduce how to add test data with fixtures."
    And I press "Create"
    Then I should see "Rails Fixtures"
    And I should be on the topics page

    
