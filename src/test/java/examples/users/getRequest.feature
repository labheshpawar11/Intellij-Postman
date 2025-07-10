Feature:Get the data from request

  Scenario: Get the Data
  Given url "https://reqres.in/api/users?page=2"
    And header x-api-key = 'reqres-free-v1'
    When method get
    And header Accept = 'application/json'
    Then status 200
    * def requestpayload = read('common/GetResponse.json')
    * print requestpayload

  @RunThis
  Scenario: Get the Data contains
    Given url "https://reqres.in/api/users?page=2"
    When method get
    And header Accept = 'application/json'
    Then status 200
    And print response
    And match response contains deep {"data":[{"email":"rachel.howell@reqres.in"}]}
    * print responseHeaders
    And match responseHeaders['Connection'][0] == 'keep-alive'
    And match responseHeaders['Transfer-Encoding'][0] == '#string'

  Scenario: Get the Data contains xml
    Given url "https://reqres.in/api/users?page=2"
    When method get
    And header Accept = 'application/xml'
    Then status 200
    And print response
    And match response/root/page == '2'

  Scenario: Get the Data and variable
* def var_int = 10
    * def vars_int = 20
    Then print "new value==>",var_int
    # scope of the varibale is only for present scenario


  Scenario: Get the Data Using get request and validate the jasonpath
    Given url "https://reqres.in/api/users?page=2"
    When method get
    And header Accept = 'application/json'
    Then status 200
    * def first_name = karate.jsonPath(response,"$..data[?(@.id==1)].first_name")
# jsonPath




