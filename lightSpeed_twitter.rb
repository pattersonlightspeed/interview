require "selenium-webdriver"
require "watir"

browser = Watir::Browser.new :chrome
browser.goto('https://twitter.com/login')
sleep 5
browser.text_field(:class => 'js-username-field').set "lspeed002"
browser.text_field(:class => 'js-password-field').set "june22sp"
# browser.button(:type => 'submit').click
browser.button(:xpath,'//*[@id="page-container"]/div/div[1]/form/div[2]/button').click
sleep 5
puts "Watir is restricted from continuing because twitter recognizes the automation and reverts to CAPTCHA!!!"
browser.checkbox(:class => 'recaptcha-checkbox-checkmark').set(true)
