#language: en

Feature: Search CEP
    In order to validate a feature
    As a user
    I want to search an address using a CEP

    Scenario: Search CEP
        Given I am in the Correios site
        When I insert a CEP '02039030'
        When click on search button
        Then I shall see the information of the address

    Scenario: Search invalid CEP
        Given I am in the Correios site
        When I insert a an invalid CEP '0203903033'
        When click on search button
        Then I shall see the error message

