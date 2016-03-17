module WordpressSpike
  module Pages
    class HomePage
      FIVE_SECONDS = 5
      TITLE_LABEL_ID = 'my_site_title_label'
      SUBTITLE_LABEL_ID = 'my_site_subtitle_label'
      FAB_BUTTON_ID = 'fab_button'

      def self.validate_active(driver)
        Selenium::WebDriver::Wait.new(timeout: FIVE_SECONDS).until do
          driver.find_element(id: TITLE_LABEL_ID)
          driver.find_element(id: SUBTITLE_LABEL_ID)
        end
      end

      def initialize(driver)
        @driver = driver
      end

      def tap_on_new_post_icon
        new_post_button = @driver.find_element(id: FAB_BUTTON_ID)
        new_post_button.click()
      end
    end
  end
end
