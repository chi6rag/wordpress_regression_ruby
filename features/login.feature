Feature: Login

  Scenario Outline: Login Sad Path
    When I login using "<email>" and "<password>"
    Then I should stay on login page
    Examples:
      | email                     | password            |
      | wrong_email@example.com   | Some Password       |
      | wrong_email_2@example.com | Some Other Password |

  Scenario: Login Happy Path
    When I login using valid email and password
    Then I should be taken to home page
