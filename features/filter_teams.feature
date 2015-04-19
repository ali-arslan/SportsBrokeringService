Feature: display list of teams filtered by type


  Background: teams have been added to database

    Given the following teams exist:
      | title        | tpye               | odds |
      | India        | internetional      | 2.4  |
      | Australia    | international      | 1.7  |
      | Lahore       | domestic           | 2.1  |

    And  I am on the All Teams page

  Scenario: restrict to movies with 'international' type
    When I check the following types: international
    And I uncheck the following types: domestic
    And I press "Refresh"
    Then show me the page
    Then I should see "India"
    Then I should see "Australia"
    Then I should not see "Lahore"