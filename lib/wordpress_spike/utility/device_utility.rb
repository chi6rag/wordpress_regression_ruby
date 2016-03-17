module WordpressSpike
  module Utility
    class DeviceUtility
      BACK_KEY_CODE = 4

      def initialize(driver)
        @driver = driver
      end

      def press_back_button
        @driver.press_keycode(BACK_KEY_CODE)
      end
    end
  end
end
