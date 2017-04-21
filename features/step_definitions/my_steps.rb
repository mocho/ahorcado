When(/^Inicie la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^debo ver el input del jugador "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^debo ver el boton "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Given(/^ingresa como valor de "(.*?)" la letra "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When(/^click en boton "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^debo ver letra "(.*?)" en lugar del guion$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end


