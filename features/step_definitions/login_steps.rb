When(/^I login using "(.*)" and "(.*)"$/) do |email, password|
  login_page = WordpressSpike::Pages::LoginPage.new(@driver)
  login_page.enter_email(email)
  login_page.enter_password(password)
  login_page.login
end

When(/^I login using valid email and password$/) do
  valid_email = @settings['valid_user']['email']
  valid_password = @settings['valid_user']['password']
  login_with(@driver, valid_email, valid_password)
end

Then(/^I should stay on login page$/) do
  WordpressSpike::Pages::LoginPage.validate_active(@driver)
end

def login_with(driver, email, password)
  login_page = WordpressSpike::Pages::LoginPage.new(driver)
  login_page.enter_email(email)
  login_page.enter_password(password)
  login_page.login()
end
