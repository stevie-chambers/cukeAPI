Feature: Get
  The API should support the HTTP GET verb for all resources

  Scenario: Get the root
    Given the API knows about the following fruit:
      | name | color |
      | banana | yellow |
      | apple  | green  |
      | strawberry | red |
    When the client requests Content-Type of "text/html"
    And the client requests GET "/api/fruits"
    Then the response Status code should be "200"
    And the response Content-Type should be "text/html"

