Feature: Topics List and Details
  In order to learn about topics,
  People need to be able to see them in a list
  and see details about them

  Background: Make sure we have a topic in the list
    Given I go to the topics page
    And I follow "New Topic"
    When I fill in "Title" with "Rails Fixtures"
    And I fill in "Description" with "Introduce how to add test data with fixtures."
    And I press "Create"

  Scenario: Viewing a topic detail page
    When I go to the topics page
    And I follow "Rails Fixtures"
    Then I should see "Introduce how to add test data with fixtures."
    And I should not see "New Topic"

  Scenario: Deleting a topic
    When I go to the topics page
    When I follow "Delete"
    Then I should not see "Rails Fixtures"
    And I should see "New Topic"

