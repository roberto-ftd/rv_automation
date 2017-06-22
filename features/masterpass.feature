@wip

# Masterpass (MP) is a digital wallet offered through the HCO page.
# This feature file has been developed as a way to quickly test the Masterpass functionality, and therefore, it does not include testing for Masterpass provisioning & opt-out functionality, for instance.

Feature: A Masterpass (MP) transaction can be performed
  In order to make sure that the Masterpass feature works correctly
  As a consumer I want to be able to purchase items via a secure payment page
  I want to see that the MP Lightbox is displayed correctly and that it can process transactions

  Background:
    Given I open the HCO Test Tool

    Scenario Outline: <Test Case ID> Perform successful transactions for entitled cards.
      When I enter "http://localhost:3000/payment" in the url field
        And I enter "xFcMNrpXWtO2EI6hhW55" in the transaction key field
        And I enter "WSP-MP-AC-l5n7SgAAFw" in the x_login field
        And I enter a transaction "<amount>" amount on HCO Test Tool page
        And I click the "calculate MD5 hash" button
        And I click the checkout button
      Then the "MP PP 1" payment page is displayed
      When I click on the MP radio button
      # Then I should see the "Pay with Masterpass" legend
        # And I should see the Masterpass icon
        # And I should see the "Learn More" link
      # "second MP button" means 2nd from top to bottom
      When I click on the second MP icon
      # Then I should see the MP Lightbox
        # The 1st message is displayed on the 1st login only:
        # And I should see either the "Welcome to Masterpass" or the "Welcome back" greeting message
        Then I should see the "Welcome to Masterpass" message
      When I enter "rvillalva+masterpass6@example.com" in the Email or Mobile Number field
        # Since the purpose of this test is not to test the Google reCAPTCHA, the next step supposes the tester is logged in into a Google account:
        And I click on the reCAPTCHA checkbox
        And I click on the "Sign In" button
        And I enter my "password" in the Password field
        And I uncheck the "Remember me on this device to save my username" checkbox
        And I click on the "Sign In" button
      Then I should see the "Is that really you?" message
      When I enter the six-digit code in the "Code from Text Message" field
        And I click on the "Continue" button
      Then I should see the "Pay with..." message
      When I select the credit card with the "<card_ending>" ending
        And I click on the "Continue" button
      Then I should see the "<result>" result on the receipt
      When I click on the "Receipt Link Text" link
      Then I should be able to leave the receipt view

    Examples: <Test Case ID> Perform successful transaction type for card <card>
      | Test Case ID   | amount | card_ending | type       | result   |
      | HCO-MP-010-010 | 10.09  | 0121        | mastercard | Approved |
      #| HCO-MP-010-011 | 89.63  | 0044        | amex       | Approved |
      #| HCO-MP-010-012 | 349.63 | 0010        | visa       | Approved |
