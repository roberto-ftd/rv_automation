# This duplicate version of the Payment Page page is intended to be used in the Masterpass automation only
# Do NOT use it in other tests, because it is not complete

require 'page-object'
require 'rspec'

class HcoPaymentPage
  include PageObject

  # Payment Option Radio Buttons on HCO Test Tool page
  # radio_button_group(:payment_option, :name => 'f')
  radio_button(:masterpass, :id => 'f_mp')

  # Masterpass
  # image(:first_masterpass_image, :src => 'https://static.masterpass.com/dyn/img/btn/en/US/mp_chk_btn_147x034px.png')
  # image(:first_masterpass_image, :alt => 'Masterpass')
  # link(:first_masterpass_link, :href => '/payment/try_again?f=mp&amp;merchant=WSP-MP-AC-l5n7SgAAFw&amp;servdt5=3')
  # image(:second_masterpass_image, :src => 'https://static.masterpass.com/dyn/img/btn/en/US/mp_chk_btn_147x034px.png')
  # Surprisingly, the src is the same for both MP icons, it is just their size that is different.

  text_field(:masterpass_login_username, :id => 'formly_1_fieldUsername_username_0')
  checkbox(:masterpass_recaptcha, :class => 'recaptcha-checkbox-checkmark')


  # Generic Fields on HCO Payment pages
  text_field(:cardholder_name, id:    'exact_cardholder_name')
  text_field(:card_number,     id:    'x_card_num') # Used by Credit and Gift card
  button(:payment_button,      name: 'commit')
  link(:leave_page_link,       text:  'Leave the Receipt Page')

  # Credit Card fields on HCO Payment pages
  text_field(:expiry_date,     id:    'x_exp_date')

  # Gift Card fields on HCO Payment pages
  text_field(:security_code,   id:    'x_card_code')

  # AVS fields
  text_field(:x_address,           id: 'x_address')
  text_field(:x_city,              id: 'x_city')
  select_list(:x_state,            id: 'x_state')
  text_field(:x_zip,               id: 'x_zip')
  select_list(:x_country,          :id => "x_country")


end
