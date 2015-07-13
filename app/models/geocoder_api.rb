require 'open-uri'
require 'json'

class GeocoderApi
  attr_accessor :parsed_result

  def initialize(user_address)
    address = URI.encode(user_address)
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{address}"
    result = open(url).read
    @parsed_result = JSON.parse(result)
  end

  def lat
    parsed_result['results'][0]['geometry']['location']['lat']
  end

  def lng
    parsed_result['results'][0]['geometry']['location']['lng']
  end
end
