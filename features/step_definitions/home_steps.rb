And(/^I tap on New Post Icon on Home Page$/) do
  home_page = WordpressSpike::Pages::HomePage.new(@driver)
  home_page.tap_on_new_post_icon
end

Then(/^I should be taken to home page$/) do
  WordpressSpike::Pages::HomePage.validate_active(@driver)
end
