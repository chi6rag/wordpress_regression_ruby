Feature: Login

  Scenario Outline: Login Sad Path
    Given On home page I login using "<email>" and "<password>"
    Then I should stay on login page
    Examples:
      | email                     | password            |
      | wrong_email@example.com   | Some Password       |
      | wrong_email_2@example.com | Some Other Password |

  Scenario: Login Happy Path
    Given On home page I login using "imayanklamba@gmail.com" and "!Abcd1234"
    Then I should be taken to home page
