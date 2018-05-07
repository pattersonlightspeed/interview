require "selenium-webdriver"
require "watir"

browser = Watir::Browser.new :chrome
browser.goto('https://rubygems.org/')
browser.text_field(:id => 'home_query').set('ruby-debug19')
browser.button(:class => 'home__search__icon').click
browser.a(:class, 'gems__gem').click
bdep = browser.div(:id => 'runtime_dependencies')
puts "================================================"
puts "Developer Dependencies"
puts bdep.a(:index => 0).text
puts bdep.a(:index => 1).text
puts bdep.a(:index => 2).text
puts "================================================="
author = browser.p(:xpath,'/html/body/main/div/div/div[1]/div[4]/ul/li/p').text
puts "Author(s): " + author
puts "=================================================="
