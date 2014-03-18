require 'httparty'

module BambooHR
  class Client
    include HTTParty
    format :json

    base_uri "https://api.bamboohr.com"

    attr_accessor :key
    attr_accessor :subdomain

    def employee_list!
      self.class.get("/api/gateway.php/#{subdomain}/v1/employees/directory", basic_auth: auth, headers: headers)
    end

    def employee_list
      JSON.parse employee_list!.body
    end

    private
    def headers
      { 'Accept' => 'application/json' }
    end

    def auth
      { username: key, password: "x" }
    end
  end
end
