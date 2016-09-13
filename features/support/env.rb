#---------------------------------------
# Author: Thayanne Albquerque Freire
# Author: Ernesto Cid Brasil de Matos
#---------------------------------------

require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'capybara-screenshot/cucumber'
require 'pry'
require 'uri'
require 'rspec'

##--------------------------Default Config----------------------
## Default configuration for run the features on Phantom.js and 
## Chromer.

if ENV['chrome']
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    options = {
      :js_errors => false,
      :timeout => 360,
      :debug => false,
      :inspector => false,
    }
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
else
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
                                  app,
                                  #window_size: [1280, 1024],
                                  :debug => false,
                                  :js_errors => false#,
                                  #debug: true
                                )
  end
  Capybara.default_driver    = :poltergeist
  Capybara.javascript_driver = :poltergeist
end
##--------------------------------------------------------------

##------------------------Proxy Config--------------------------
## Default confiration for run the features on Firefox.

# Tell FireFox to use proxy settings

# if ENV['http_proxy']
#   Capybara.register_driver :selenium do |app|
#     profile = Selenium::WebDriver::Firefox::Profile.new

#     uri = URI(ENV['http_proxy'])

#     profile["network.proxy.type"] = 1 # manual proxy config
#     profile["network.proxy.http"] = uri.host
#     profile["network.proxy.http_port"] = uri.port

#     if ENV['https_proxy']
#       uri = URI(ENV['https_proxy'])
#       profile["network.proxy.https"] = uri.host
#       profile["network.proxy.https_port"] = uri.port
#     end

#     Capybara::Selenium::Driver.new(app, :profile => profile)
#   end
# end
# Capybara.default_driver = :selenium
##--------------------------------------------------------------