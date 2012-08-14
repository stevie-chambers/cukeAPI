Given /^the API knows about the following fruit:$/ do |fruits|
  # table is a Cucumber::Ast::Table
  CukeAPI.fruit = fruits
end

When /^the client requests HEAD "(.*?)"$/ do |path|
  head(path)
end

Then /^the response status code should be "(.*?)"$/ do |status|
  last_response.status.to_s.should == status
end

And /^the response body should be empty$/ do
  last_response.body.nil?
end