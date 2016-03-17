Feature: New Post

  Scenario Outline: New Post - Happy Path
    Given On home page I login as a valid user and tap on New Post Icon
    When I enter Title as "<title>" and Message as "<message>"
    And I press Publish
    Then I should be taken to home page
    Examples:
      | title       | message       |
      | Valid Title | valid message |

  Scenario: New Post - Sad Path
    Given On home page I login as a valid user and tap on New Post Icon
    When I enter a blank Title and Message
    And I press Publish
    Then I should be on new post page
