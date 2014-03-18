require 'bundler'
require 'test/unit'
require 'rr'
require 'vcr'

Bundler.require

require 'bamboohr'

VCR.configure do |c|
  c.cassette_library_dir = 'features/vcr_cassettes'
  c.hook_into :webmock # or :fakeweb
  c.default_cassette_options =  { record: :none }

  # Set your API token to record cassettes, use this option
  # to replace the token with something else
  #
  # c.filter_sensitive_data('API_TOKEN') { '' }
end
