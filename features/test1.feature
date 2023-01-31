

  Feature: Comparing numbers

    Scenario: Compare two variables with the same value
      Given Define variables x and y
      When Add 1 to x
      And Add 1 to y
      Then x is equal to y


    Scenario: Compare two variables with the same value incremented
      Given Define variables x and y
      When Add 1 to x
      And Add 1 to x
      And Add 1 to y
      And Add 1 to y
      Then x is equal to y