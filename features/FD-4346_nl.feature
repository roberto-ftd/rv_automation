@wip

#
# Documentation available here: https://fintechdev.atlassian.net/browse/FD-4346
#
# NOTES:
# - Terminal requirement: AVS MUST be enabled for the terminal (i.e, 'Y' on S18301-24)
# - A basic PP with the name "FD-4346 PP" must exist in PGW Demo (i.e., see account "rovi DEMO")
# - This feature file represents the steps to reproduce, i. e., it is NOT based on the desired behaviour, but the current one.

Feature: FD-4346-State defaults to Newfoundland and Labrador in payment page

  In order to make sure that the HCO feature works correctly
  As a consumer I want to be able to select the correct state/province, when AVS is used


  Background:
    Given I open the HCO Test Tool for FD-4346

  @manual
  Scenario Outline: <HCO-FD-4346-1> Verify the state shown on a PP using a terminal with AVS enabled.
  When I enter the demo url "https://demo.globalgatewaye4.firstdata.com/payment" in the url field
    And I enter "mvyHKuCMhuZst0QzXtJ7" in the transaction key field for FD-4346 PP
    And I enter "WSP-ROVI-ZObWCgBzIQ" in the x_login field for FD-4346 PP
    And I enter a transaction "<amount>" amount on HCO Test Tool page
    And I click the "calculate MD5 hash" button
    And I click the checkout button
  Then the "FD-4346 PP" payment page title is displayed
  When I select a country like "<country>" from the Country drop-down menu
  Then the option "<state>" is automatically selected from the State/Province drop-down menu

    Examples: <HCO-FD-4346-1> Verify the state shown on a PP using a terminal with AVS enabled.
      | Test Case ID    | amount | country         | state                     | comment   |
      | HCO-010-001-010 | 10.00  | Argentina       | Newfoundland and Labrador | incorrect |
      | HCO-010-001-020 | 20.00  | Canada          | Alabama                   | correct   |
      | HCO-010-001-030 | 30.00  | United States   | Alabama                   | correct   |
      | HCO-010-001-040 | 40.00  | United Kingdom  | Newfoundland and Labrador | incorrect |
      | HCO-010-001-050 | 50.00  | Zimbabwe        | Newfoundland and Labrador | incorrect |
