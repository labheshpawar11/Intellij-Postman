Feature: Scenario outlinr feature
  Background: read the data from csv
  * def testdata = read("common/Data.csv")

  Scenario Outline:Data driven for <fn>
    * def first_anme = "<fn>"
    * def id = "<id>"
    * def manager = "<manager>"
    And match id == '#string'

  Examples:
    |fn|id|manager|
    |labesh|100|false|
    |mahesh|200|true|

    # ! used keep same values as integer or boolean


  Scenario Outline:Data driven for <fn>
    * def id = "<id>"
    * def first_name = "<first_name>"
    * def last_name = "<last_name>"


    Examples:
      |testdata|
