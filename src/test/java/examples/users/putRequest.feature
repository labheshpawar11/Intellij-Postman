Feature: upadte the data

  Background: Craete and initialize the base url
    Given  url 'https://reqres.in'

  Scenario: update the data of job
    Given path '/api/users'
    * def getid = 10
    * def body = read('common/CreateJob.json')
    And request body
    And header x-api-key = 'reqres-free-v1'
    And headers {Accept : 'application/json', ContentType:'application/json'}
    When method Post

    Given path '/api/users/2'
    And header x-api-key = 'reqres-free-v1'
    And request
    """
    {
      "id": 2,
      "email": "george.bluth@reqres.in",
      "first_name": "labhesh",
      "last_name": "open",
      "avatar": "https://reqres.in/img/faces/1-image.jpg"
    }
    """
    And headers {Accept : 'application/json', ContentType:'application/json'}
    When method Put
    And status 200
    * match response.deep['2'][0].first_name == 'labhesh'
