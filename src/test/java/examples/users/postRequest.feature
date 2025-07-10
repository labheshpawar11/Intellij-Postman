Feature: To create the new job entry to apllication

  Background: Craete and initialize the base url
  Given  url 'https://reqres.in'

  Scenario: create the job entry in json format
    #post request and validation of json
  Given path '/api/users'
    * def body = read('common/CreateJob.json')
    And request body
    And header x-api-key = 'reqres-free-v1'
    And headers {Accept : 'application/json', ContentType:'application/json'}
    When method Post
    And status 201
    And print response
    And match response contains deep {"data":[{"email":"george.bluth@reqres.in"}]}


  Scenario: create the job entry in json format
    #header and post and external file to read the json data
    Given path '/api/users'
    * def body = read('common/CreateJob.json')
    And request body
    And header x-api-key = 'reqres-free-v1'
    And headers {Accept : 'application/json', ContentType:'application/json'}
    When method Post


  Scenario: create the job entry in json format
    #schema validation
    Given path '/api/users'
    * def body = read('common/CreateJob.json')
    And request body
    And header x-api-key = 'reqres-free-v1'
    And headers {Accept : 'application/json', ContentType:'application/json'}
    When method Post
    And status 201
    * match each response.data contains { id: '#number', email: '#string', first_name: '#string', last_name: '#string', avatar: '#string' }

  Scenario: create the job entry in json format embeded json
    #header and post and external file to read the json data
    Given path '/api/users'
    * def getid = 10
    * def body = read('common/CreateJob.json')
    And request body
    And header x-api-key = 'reqres-free-v1'
    And headers {Accept : 'application/json', ContentType:'application/json'}
    When method Post

