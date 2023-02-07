Feature: Example feature to test cypress setup

  Scenario: The home page loads
    Given user navigates to "/"
    Then browser title is "- NCI"
    