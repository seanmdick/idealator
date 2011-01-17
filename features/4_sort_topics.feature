Feature: Vote sorting
  In order to determine if the Topic sorting is working
  we should create a few topics
  then try sorting them in various ways
  
  Background: Make sure that we have a topic
    Given I go to the topics page
      And I have a few voted-on topics
    
  Scenario: sort by title
    When I follow "Topics"
    Then the topics should be ordered by title
    
  Scenario: sort by total number of votes
    When I follow "Votes"
    Then the topics should be ordered by total votes

  Scenario: sort by title
    When I follow "Updated"
    Then the topics should be ordered by last updated date
