Feature: Text Nginx

Scenario: get request

    Given url 'http://' + karate.properties['testURL']  
    And path '/'
    When method get
    Then status 200