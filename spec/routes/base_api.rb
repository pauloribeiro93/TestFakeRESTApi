require "httparty"

class BaseApi
  include HTTParty
  base_uri "https://fakerestapi.azurewebsites.net/api/v1/"
end
