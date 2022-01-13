#make a payment to three different client
# client countries CN, USA, JPN
# client amounts 10, 20, 30
# for each payment user's balance should be checked.

# scenario
# make payment for each country in countries list
#logout test
Feature: make a payment to three different client
#@step1
#Scenario:make a payment to three different client
#When User login with user valid credentails
#And  User make a deposit entering payment details
#Then  User should check to balance

  @payment
  Scenario Outline: make a payment
    When  user login
    And   user make deposit via "<phone>" "<name>" "<amount>" "<client>"
    Then user should check
    And user will logout
    Examples:

      | phone | name | amount | client|
      | 00000 | name | 10 | China     |
      | 00001 | name | 20 | USA     |
      | 00002 | name | 30 | India     |
      | 00003 | name | 40 | Japan     |
      | 00004 | name | 50 | Iceland     |
      | 00005 | name | 60 | Greenland   |
      | 00006 | name | 70 | Switzerland     |
      | 00007 | name | 80 | Norway     |
      | 00008 | name | 90 | New Zealand    |
      | 00009 | name | 100 | Greece     |
      | 000010 | name | 5 | Italy   |
      | 000011 | name | 1 | Ireland     |


