module WordpressSpike
  module Pages
    class NewPostPage
      TITLE_INPUT_ID = 'post_title'
      CONTENT_INPUT_ID = 'post_content'
      PUBLISH_BUTTON_ID = 'menu_save_post'

      def self.validate_active(driver)
        Selenium::WebDriver::Wait.new(timeout: FIVE_SECONDS).until do
          driver.find_element(id: TITLE_INPUT_ID)
          driver.find_element(id: CONTENT_INPUT_ID)
          driver.find_element(id: PUBLISH_BUTTON_ID)
        end
      end

      def initialize(driver)
        @driver = driver
      end

      def enter_title(title)
        @driver.find_element(id: TITLE_INPUT_ID).send_keys(title)
      end

      def enter_content(content)
        @driver.find_element(id: CONTENT_INPUT_ID).send_keys(content)
      end

      def click_publish
        @driver.find_element(id: PUBLISH_BUTTON_ID).click()
      end
    end
  end
end
