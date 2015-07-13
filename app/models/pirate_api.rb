require 'open-uri'
require 'json'

class PirateApi
  attr_accessor :parsed_result

  def initialize(user_text)
    text = URI.encode(user_text)
    url = "http://isithackday.com/arrpi.php?text=#{text}&format=json"
    result = open(url).read
    @parsed_result = JSON.parse(result)
  end

  def translated_text
    return parsed_result['translation']['pirate']
  end
end
