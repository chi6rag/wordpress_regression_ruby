When(/^I try to create a new post with "(.*)" and "(.*)"$/) do |title, message|
  create_new_post(message, title)
end

When(/^I try to create a new post with blank title and message$/) do
  create_new_post('', '')
end

Then(/^I should stay on new post page$/) do
  WordpressSpike::Pages::NewPostPage.validate_active(@driver)
end

def create_new_post(message, title)
  home_page = WordpressSpike::Pages::HomePage.new(@driver)
  new_post_page = WordpressSpike::Pages::NewPostPage.new(@driver)
  device_utility = WordpressSpike::Utility::DeviceUtility.new(@driver)

  home_page.tap_on_new_post_icon
  new_post_page.enter_title(title)
  new_post_page.enter_content(message)
  device_utility.press_back_button
  new_post_page.click_publish
end
