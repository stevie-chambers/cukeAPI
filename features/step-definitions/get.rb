When /^the client requests Content\-Type of "(.*?)"$/ do |content_type|
  header 'Accept', content_type
  header 'Content-type', content_type
end

And /^the client requests GET "(.*?)"$/ do |path|
  get(path)
end

Then /^the response Status code should be "(.*?)"$/ do |status|
  last_response.status.to_s.should == status
end

And /^the response Content\-Type should be "(.*?)"$/ do |content_type|
  last_response.headers['Content-type'].should include(content_type)
end