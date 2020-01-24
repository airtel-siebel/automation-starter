# Created by b0214232 at 16/01/20
Feature: test

  Scenario: test
    Given Open the browser and login to Siebel
#And I force a sleep for 10 seconds
And I wait for "msisdnSearchButton"
And I click on "NewAccount"
And I click on "ManualCAF"
And I input text "Test" to object "FirstName"
And I input text "Nitin" to object "LastName"
And I input text "testNTN@test.com" to object "Email"
And I input text "9876543210" to object "ContactNumber"
And I click on "NextNCA"
#And I force a sleep for 15 seconds
And I wait for "CatalogueDropDown"
And I click on "CatalogueDropDown"
And I click on "RetailText"
And I force a sleep for "10" seconds
And I click on "SearchPlanIcon"
And I input text "Infinity Family_1199 Plan" to object "TextBoxPlan"
And I click on "SearchPlanIcon"
And I force a sleep for "5" seconds
And I click on "AddCart"
#And I force a sleep for 20 seconds
And I wait for "PlanDone"
And I scroll to object "PlanDone"
And I click on "PlanDone"
#And I force a sleep for 10 seconds
And I wait for "RandomNumber"
And I scroll to object "RandomNumber"
And I click on "RandomNumber"
And I force a sleep for "10" seconds
And I scroll to object "MSISDNSelect"
And I click on "MSISDNSelect"
#And I force a sleep for 15 seconds
And I wait for "SimTextBox"
    And I force a sleep for "10" seconds
And I click on "SimTextBox"
And I input text "8991889012345604972U" to object "SimTextBox"
And I click on "NextStepOne"
And I wait for "GenderTextBox"
And I scroll to object "GenderTextBox"
And I input text "M" to object "GenderTextBox"
And I click on "Country"
And I input text "Test Father" to object "FatherTextBox"
And I input text "22/12/1990" to object "DOBTextBox"
And I click on "NextStepTwo"
And I input text "30" to object "HouseFlatNumber"
And I input text "Test" to object "StreetAddress"
And I input text "Test" to object "LocalityTehsil"
And I force a sleep for "2" seconds
And I click on "SearchButtonPinCode"
And I force a sleep for "2" seconds
And I scroll to object "OkButtonForPincodeSelect"
And I click on "OkButtonForPincodeSelect"
And I wait for "CreateDocumentButton"
And I click on "CreateDocumentButton"
And I clear object "CategoryInputDropDown"
And I input text "POI & POA" to object "CategoryInputDropDown"
And I click on "POIandPOAvalueDropDown"
And I force a sleep for "2" seconds
And I input text "Arms License" to object "DocType"
And I input text "1232323232" to object "DocID"
And I input text "Test Place " to object "PlaceOfIssue"
And I input text "01/01/2019" to object "DateOfIssue"
And I click on "NextButtonStepThree"
And I wait for "NextButtonStepFour"
And I click on "NextButtonStepFour"
And I wait for "PrintCAFButton"
And I scroll to object "PrintCAFButton"
And I click on "PrintCAFButton"
And I wait for "SaveButtonForCAF"
And I click on "SaveButtonForCAF"
And I wait for "FinishButton"
And I click on "FinishButton"
And I get order number from pop up "OrderSubmitedPopUp" and save it to variable "OrderNumber"