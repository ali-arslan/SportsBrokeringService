Feature: add new bet

  As a user of the website
  I should be able to add a new bet.
  Background: users in database

    Given the following bet is to be added:
      | userid  | teamid | value | timestamp |
      |   1     |    2   |  100  |  2015-04-19 12:19:00 UTC   |

  Scenario: add new bet to the database
    When I go to the All Bets page
    And I click on New Bet
    And I fill in the following information as above
    And I click on Create Bet
    Then I should be on the All Bets page
    Then I should see "New Bet is successfully created."
    And appropriate records should get created for the new Bet with id '1'
