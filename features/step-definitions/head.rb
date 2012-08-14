When /^the client requests a HTTP HEAD for the root URI$/ do
  head(@api_uri)
end

Then /^the response status code should be "(.*?)"$/ do |status|
  last_response.status.to_s.should == status
end

And /^the response body should be empty$/ do
  last_response.body.nil?
end