When(/^Inicie la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^debo ver el input del jugador "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

