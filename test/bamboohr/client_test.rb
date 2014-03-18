require 'test_helper'

class BambooHR::ClientTest < Test::Unit::TestCase
  def setup
    @subject           = BambooHR::Client.new
    @subject.subdomain = "crowdint"
    @subject.key       = "API_TOKEN"
  end

  def test_employee_list!
    VCR.use_cassette('Authentication/Basic_Authentication') do
      response = @subject.employee_list!

      assert_equal true, response.class == HTTParty::Response
      assert_equal 200, response.code
    end
  end

  def test_employee_list
    json = {}
    stub(@subject).employee_list!.mock!.body() { "RESPONSE" }
    mock(JSON).parse("RESPONSE") { json }

    assert_equal json, @subject.employee_list
  end
end
