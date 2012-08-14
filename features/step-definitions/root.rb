Given /^the API root URI is "(.*?)"$/ do |api_uri|
  @api_uri = api_uri
end

And /^the client expects "(.*?)"$/ do |accept|
  header 'Accept', accept
  header 'Content-type', accept
end

When /^the client reads the API URI$/ do
  get(@api_uri)
end

Then /^the HTTP response code should be (\d+)$/ do |code|
  last_response.status.should == code
end

And /^the response output format should be "(.*?)"$/ do |format|
  last_response.headers['Content-type'].should == format
end

And /^the output should contain "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end