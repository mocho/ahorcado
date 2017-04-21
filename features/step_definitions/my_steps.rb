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

Given(/^ingresa como valor de "(.*?)" la palabra "(.*?)"$/) do |campo, valor|
  fill_in(campo, :with => valor)
end

When(/^click en boton "(.*?)"$/) do |arg1|
  click_button("intentar")
end

Then(/^debo ver letra "(.*?)" en lugar del guion$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Given(/^ingresa como valor de "(.*?)" la letra "(.*?)"$/) do |campo, valor|
  fill_in(campo, :with => valor)
end

Then(/^debo ver letra "(.*?)" en lugar del guion en su posicion$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end


