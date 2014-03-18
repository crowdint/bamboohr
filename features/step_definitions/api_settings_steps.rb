Given(/^I set an API key$/) do
  @client.key = "API_TOKEN"
end

Given(/^I set the company subdomain$/) do
  @client.subdomain = "crowdint"
end
