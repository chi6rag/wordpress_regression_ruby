$:.unshift("#{File.dirname(__FILE__)}/../../lib/")

require 'wordpress_spike'
require 'rubygems'
require 'appium_lib'

SERVER_URL = 'http://localhost:4723/wd/hub'
PORT = 4723
TWENTY_SECONDS = 20

Before do
  desired_capabilities = {
      caps: {
          platformName: :android,
          appActivity: '.ui.WPLaunchActivity',
          appPackage: 'org.wordpress.android',
          deviceName: 'Android',
          app: File.expand_path('.', 'app/wordpress_android.apk')
      },
      appium_lib: {
          server_url: SERVER_URL,
          port: PORT
      }
  }

  @driver = Appium::Driver.new(desired_capabilities)
  @driver.start_driver
  @driver.set_wait(TWENTY_SECONDS)
end
