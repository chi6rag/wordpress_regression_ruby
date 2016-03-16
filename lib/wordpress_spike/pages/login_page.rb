require 'selenium/webdriver'

module WordpressSpike
  module Pages
    class LoginPage
      USERNAME_INPUT_FIELD_ID = 'nux_username'
      PASSWORD_INPUT_FIELD_ID = 'nux_password'
      SIGN_IN_BUTTON_ID = 'nux_sign_in_button'

      def self.validate_active(driver)
        Selenium::WebDriver::Wait.new(timeout: 5).until do
          driver.find_element(id: USERNAME_INPUT_FIELD_ID)
          driver.find_element(id: PASSWORD_INPUT_FIELD_ID)
          driver.find_element(id: SIGN_IN_BUTTON_ID)
        end
      end

      def initialize(driver)
        @driver = driver
      end

      def enter_email(email)
        @driver.find_element(id: USERNAME_INPUT_FIELD_ID).send_keys(email)
      end

      def enter_password(password)
        @driver.find_element(id: PASSWORD_INPUT_FIELD_ID).send_keys(password)
      end

      def login()
        @driver.find_element(id: SIGN_IN_BUTTON_ID).click
      end
    end
  end
end
