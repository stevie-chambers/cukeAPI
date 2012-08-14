Feature: Head
  The API should support the HTTP HEAD verb for all resources

  Scenario: Head the root
    Given the API knows about the following fruit:
      | name | color |
      | banana | yellow |
      | apple  | green  |
      | strawberry | red |
    When the client requests HEAD "/api/fruits"
    Then the response status code should be "200"
    And the response body should be empty