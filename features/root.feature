Feature: Root
  The starting point of an API is its root.
  We expect full disclose here, for humans and for machines.
  This is the first test to see if an API is RESTful.
  If the root is broken, the API is broken.

  Scenario: Get the API Root
    Given the root URI is "http://localhost:4567/api"
    And the client requests a content type of "text/html"
    When the client reads the URI
    Then the HTTP response code should be "200"
    And the response output format should be "text/html"
    And the output should contain "cukeAPI Root"
