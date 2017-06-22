# include TasksHelper
# require 'hco_test_tool_page'

Given(/^I open the HCO Test Tool$/) do
  goto_htp
  sleep 1
end

=begin
When(/^I select the "([^"]*)" radio button$/) do |fd_localhost|
  on(HcoTestToolPage) do |page|
    #page.fd_localhost
    #page.system = fd_localhost
    page.select_system(fd_localhost)
  end
end
=end

When(/^I enter "([^"]*)" in the url field$/) do |url|
  on(HcoTestToolPage) do |page|
    page.url = url
  end
end

When(/^I enter "([^"]*)" in the transaction key field$/) do |transaction_key|
  on(HcoTestToolPage) do |page|
    page.transaction_key = transaction_key
  end
end

When(/^I enter "([^"]*)" in the x_login field$/) do |x_login|
  on(HcoTestToolPage) do |page|
    page.x_login = x_login
  end
end

When(/^I enter an transaction "([^"]*)" amount on HCO Test Tool page$/) do |amount|
  on(HcoTestToolPage) do |page|
    page.x_amount = amount
  end
end

When(/^I click the "([^"]*)" button$/) do |calculate_button|
  on(HcoTestToolPage) do |page|
    page.calculator_element.click
  end
end

When(/^I click the checkout button$/) do
  on(HcoTestToolPage) do |page|
    page.checkout_button
  end
  sleep 3
end

Then(/^the "([^"]*)" payment page is displayed$/) do |payment_page_name|
  expect(on(HcoPaymentPage).text).to include payment_page_name
  sleep 4
end

When(/^I click on the MP radio button$/) do
  sleep 5
  # This is a manual step because nothing of what I tried worked

  # on(HcoPaymentPage) do |page|
    # page.select_masterpass
  # end

  # select_masterpass_radio
  # select_first_masterpass_icon

  # on(HcoPaymentPage) do |page|
    # page.find("img[id='f_mp']").click
    # page.first_masterpass_link
  # end
  # sleep 2
end

# Then(/^I should see the "([^"]*)" legend$/) do |pay_with_mp|
  # sleep 5
  # expect(on(HcoPaymentPage).text).to include pay_with_mp
  # sleep 3
# end

# Then(/^I should see the Masterpass icon$/) do
  # pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^I should see the "([^"]*)" link$/) do |learn_more_link|
  # sleep 2
  # expect(on(HcoPaymentPage).text).to include learn_more_link
  # sleep 2
# end

When(/^I click on the second MP icon$/) do
  sleep 5
  # This is a manual step because nothing of what I tried worked
end

# Then(/^I should see the MP Lightbox$/) do
  # pending # Write code here that turns the phrase above into concrete actions
# end

Then(/^I should see the "([^"]*)" message$/) do |mp_welcome_message|
  sleep 5
  expect(on(HcoPaymentPage).text).to include mp_welcome_message
  sleep 5
end


When(/^I enter "([^"]*)" in the Email or Mobile Number field$/) do |mp_username|
  sleep 3
  on(HcoPaymentPage) do |page|
    page.masterpass_login_username = mp_username
  end
  sleep 5
end


When(/^I click on the reCAPTCHA checkbox$/) do
  on(HcoPaymentPage) do |page|
    page.masterpass_recaptcha
  end
  sleep 5
end

=begin
When(/^I click on the "([^"]*)" button$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I enter my "([^"]*)" in the Password field$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I uncheck the "([^"]*)" checkbox$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the "([^"]*)" message$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I enter the six\-digit code in the "([^"]*)" field$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I select the credit card with the "([^"]*)" ending$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the "([^"]*)" result on the receipt$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on the "([^"]*)" link$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be able to leave the receipt view$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
=end
