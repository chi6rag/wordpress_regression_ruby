Given(/^On home page I login using "(.*)" and "(.*)"$/) do |email, password|
  login_page = WordpressSpike::Pages::LoginPage.new(@driver)
  login_page.enter_email(email)
  login_page.enter_password(password)
  login_page.login
end

Then(/^I should stay on login page$/) do
  WordpressSpike::Pages::LoginPage.validate_active(@driver)
end
