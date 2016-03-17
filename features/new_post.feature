Feature: New Post

  Scenario Outline: New Post - Happy Path
    Given I login using valid email and password
    And  I tap on New Post Icon on Home Page
    When I enter Title as "<title>" and Message as "<message>"
    And I press Publish
    Then I should be taken to home page
    Examples:
      | title       | message       |
      | Valid Title | valid message |

  Scenario: New Post - Sad Path
    Given I login using valid email and password
    And  I tap on New Post Icon on Home Page
    When I enter a blank Title and Message
    And I press Publish
    Then I should be on new post page
