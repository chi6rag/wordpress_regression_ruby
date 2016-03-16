module WordpressSpike
  module Pages
    class HomePage
      FIVE_SECONDS = 5
      TITLE_LABEL_ID = 'my_site_title_label'
      SUBTITLE_LABEL_ID = 'my_site_subtitle_label'

      def self.validate_active(driver)
        Selenium::WebDriver::Wait.new(timeout: FIVE_SECONDS).until do
          driver.find_element(id: TITLE_LABEL_ID)
          driver.find_element(id: SUBTITLE_LABEL_ID)
        end
      end
    end
  end
end
