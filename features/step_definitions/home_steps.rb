Then(/^I should be taken to home page$/) do
  WordpressSpike::Pages::HomePage.validate_active(@driver)
end
