# This duplicate version of the Payment Page page is intended to be used in the Masterpass automation only
# Do NOT use it in other tests, because it is not complete

###############################################################################
#
# home_page.rb
#
# The file contains the definition for the HomePage class.
#
#
###############################################################################
require 'page-object'

class HcoTestToolPage
  include PageObject

#  button(:checkout_button, :id => 'checkout_button')  #NT: It doesn't work in the new HCO Tester version
  button(:checkout_button, :value => 'Checkout')
  span(:calculator, :class => 'calculator')

#Target System Radio Buttons
  radio_button_group(:system, :name => 'system')
  # radio_button(:fd_localhost, :value => 'fd_localhost')

#Manual Override Fields
  text_field(:url, :id => 'system_url')
  text_field(:transaction_key, :id => 'transaction_key')
  text_field(:x_login, :id => 'x_login')
  text_field(:x_amount, :id => 'x_amount')
  text_field(:x_fp_hash, :id => 'x_fp_hash')
  text_field(:x_fp_sequence, :id => 'x_fp_sequence')
  text_field(:x_fp_timestamp, :id => 'x_fp_timestamp')

# A

end
