Feature: Head
  The API should support the HTTP HEAD verb for all resources

  Scenario: Head the root
    Given the root URI is "http://localhost:4567/api"
    When the client requests a HTTP HEAD for the root URI
    Then the response status code should be "200"
    And the response body should be empty