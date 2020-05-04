require 'pry'
require 'net/http'
require 'json'
require 'open-uri'

class GetRequester
  
  attr_accessor :url
  
  def initialize(url)
    @url = url
  end
  
  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    #self.get_response_body
    binding.pry
  end
  
  
end