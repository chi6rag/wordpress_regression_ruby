Feature: New Post

  Scenario Outline: New Post - Happy Path
    Given I login using valid email and password
    When I try to create a new post with "<title>" and "<message>"
    Then I should be taken to home page
    Examples:
      | title       | message       |
      | Valid Title | valid message |

  Scenario: New Post - Sad Path
    Given I login using valid email and password
    When I try to create a new post with blank title and message
    Then I should stay on new post page
