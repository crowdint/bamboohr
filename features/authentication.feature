Feature: Authentication

  @vcr
  Scenario: Basic Authentication
    Given I create an instance of the client
    And I set an API key
    And I set the company subdomain
    Then I should be able to authenticate
