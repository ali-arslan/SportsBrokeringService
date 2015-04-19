Feature: add new user

  As a user of the website
  I should be able to register as a new user by creating a new user in the table

  Background: users in database

    Given the following user wants to be added:
    | id  | name | rating | balance |
    | 978 | Syed | 9      | 100     |

  Scenario: add new user to the database
      When I go to the All Users page
      And I click on New User
      And I fill in the following information as above
      And I click on Create User
      Then I should be on the All Users page
      Then I should see "New User is successfully created."
      And appropriate records should get created for the new user with id '978'
