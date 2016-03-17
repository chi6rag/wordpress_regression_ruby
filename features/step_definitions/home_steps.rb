Then(/^I should be taken to home page$/) do
  WordpressSpike::Pages::HomePage.validate_active(@driver)
end

Given(/^On home page I login as a valid user and tap on New Post Icon$/) do
  valid_email = @settings['valid_user']['email']
  valid_password = @settings['valid_user']['password']
  login_with(@driver, valid_email, valid_password)
  home_page = WordpressSpike::Pages::HomePage.new(@driver)
  home_page.tap_on_new_post_icon
end

def login_with(driver, email, password)
  login_page = WordpressSpike::Pages::LoginPage.new(driver)
  login_page.enter_email(email)
  login_page.enter_password(password)
  login_page.login()
end
