Feature: Employee Data

  Scenario:Get All Employee Data
    Given url 'https://dummy.restapiexample.com'
    And path 'api/v1/employees'
    When method get
    And print response
    And status 200
    And match response contains deep {"data":[{"employee_name":"Tiger Nixon"}]}
    * print responseHeaders
    # match responseHeaders['content-ty'] == 'application/json'
   And match responseHeaders['Content-Type'][0] == "application/json"


  Scenario:Get All Employee Data
    Given url 'https://dummy.restapiexample.com'
    And path 'api/v1/employees'
    When method get
    And print response
    And status 200
    And match response contains deep {"data":[{"employee_name":"Tiger Nixon"}]}
    * print responseHeaders


