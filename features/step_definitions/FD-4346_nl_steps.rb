# include TasksHelper
# require './tasks_helper.rb'

Given(/^I open the HCO Test Tool for FD-4346$/) do
  # goto_htp
  @browser.navigate().to("file:///Users/rvillalva/Documents/rubyapps_hco_tester/main.html")
  sleep 3
end

When(/^I enter the demo url "([^"]*)" in the url field$/) do |url|
  on(HcoTestToolPage) do |page|
    page.url = url
  end
end

When(/^I enter "([^"]*)" in the transaction key field for FD-4346 PP$/) do |transaction_key|
  on(HcoTestToolPage) do |page|
    page.transaction_key = transaction_key
  end
end

When(/^I enter "([^"]*)" in the x_login field for FD-4346 PP$/) do |x_login|
  on(HcoTestToolPage) do |page|
    page.x_login = x_login
  end
end

When(/^I enter a transaction "([^"]*)" amount on HCO Test Tool page$/) do |amount|
  on(HcoTestToolPage) do |page|
    page.x_amount = amount
  end
end

=begin
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
=end

Then(/^the "([^"]*)" payment page title is displayed$/) do |payment_page_name|
  expect(on(HcoPaymentPage).text).to include payment_page_name
  sleep 2
end

When(/^I select a country like "([^"]*)" from the Country drop\-down menu$/) do |country|
  # on HcoPaymentPage do |page|
    # page.x_country = country
    # page.x_country_element = country

  on(HcoPaymentPage) do |page|
    page.x_country = country
    sleep 1
  end
end

Then(/^the option "([^"]*)" is automatically selected from the State\/Province drop\-down menu$/) do |state|
  expect(on(HcoPaymentPage).x_state).to include state
  sleep 3
end
