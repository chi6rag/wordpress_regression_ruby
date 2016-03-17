When(/^I enter Title as "(.*)" and Message as "(.*)"$/) do |title, message|
  new_post_page = WordpressSpike::Pages::NewPostPage.new(@driver)
  device_utility = WordpressSpike::Utility::DeviceUtility.new(@driver)

  new_post_page.enter_title(title)
  new_post_page.enter_content(message)
  device_utility.press_back_button
end

When(/^I enter a blank Title and Message$/) do
  new_post_page = WordpressSpike::Pages::NewPostPage.new(@driver)
  device_utility = WordpressSpike::Utility::DeviceUtility.new(@driver)

  new_post_page.enter_title('')
  new_post_page.enter_content('')
  device_utility.press_back_button
end

And(/^I press Publish$/) do
  new_post_page = WordpressSpike::Pages::NewPostPage.new(@driver)
  new_post_page.click_publish
end

Then(/^I should be on new post page$/) do
  WordpressSpike::Pages::NewPostPage.validate_active(@driver)
end