Feature: display list of teams sorted by type

  As an avid gambler
  I should be able to view all teams sorted by type

  Background: teams have been added to database

    Given the following movies exist:
      | title        | tpye               | odds |
      | India        | internetional      | 2.4  |
      | Australia    | international      | 1.7  |
      | Lahore       | domestic           | 2.1  |

    And I am on the All Teams page

  Scenario: sort movies alphabetically
    When I follow "type"
    Then I should see "Lahore" before "India"

  Scenario: sort movies on odds
    When I follow "odds"
    Then I should see "Australia" before "India"