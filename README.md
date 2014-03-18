# BambooHR

Consume [BambooHR's API](http://www.bamboohr.com/api/documentation/) in Ruby

## Installation

Add this line to your application's Gemfile:

    gem 'bamboohr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bamboohr

## Usage

Create an instance of the client

    @client = BambooHR::Client.new

Set your company's subdomain

    @client.subdomain = "crowdint"

Set your API key

    @client.key = "SOME_RANDOM_GIBBERISH"

Consume, returns JSON

    employee_list = @client.employee_list


## Contributing

1. Fork it ( http://github.com/crowdint/bamboohr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
