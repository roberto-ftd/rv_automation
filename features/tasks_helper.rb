module TasksHelper

  # @browser             = Watir::Browser.new :chrome
  @browser             = Selenium::WebDriver.for :firefox
  @your_admin_username = 'admin'
  @your_admin_password = '4connection%'


  def login(browser, your_admin_username, your_admin_password)
    browser.goto 'https://payment-page-demo.herokuapp.com/'
    browser.link(text: 'Log In').click
    sleep 1
    browser.text_field(id: 'user_username').set(@your_admin_username)
    browser.text_field(id: 'user_password').set(@your_admin_password)
    browser.button(value: 'Log in').click
  end


  def goto_htp
    # @browser.goto "file:///Users/rvillalva/Documents/rubyapps_hco_tester/main.html"
    @browser.navigate().to("file:///Users/rvillalva/Documents/rubyapps_hco_tester/main.html")
    sleep 2
  end

  # def click_mp_radio
    # @browser.choose("f_mp")
  # end

  def select_masterpass_radio
    # @browser.select_masterpass
    # @browser.radio(:id => 'f_mp').set
    # @browser.radio(:name => 'f', :value => 'mp').set
  end

  def select_first_masterpass_icon
    # @browser.image(:first_masterpass_image, :src => 'https://static.masterpass.com/dyn/img/btn/en/US/mp_chk_btn_147x034px.png').click
    # @browser.image(:first_masterpass_image, :alt => 'Masterpass').click
    # @browser.find("img[id='f_mp']").click
  end

  def leave_receipt_view
    browser.button(value: 'Back to the Payment Page Demo Site').click
  end

  def log_out
    browser.button(value: 'Log out').click
    unless browser.text.include? 'Logged out successfully.'
      puts "You did not log out!"
    end
  end

end
