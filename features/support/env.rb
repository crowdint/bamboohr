# env.rb
#
require 'bamboohr'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'features/vcr_cassettes'
  c.hook_into :webmock # or :fakeweb
  c.default_cassette_options =  { record: :none }

  # Set your API token to record cassettes, use this option
  # to replace the token with something else
  #
  # c.filter_sensitive_data('API_TOKEN') { '' }
end

VCR.cucumber_tags do |t|
  t.tag '@vcr', use_scenario_name: true
end
