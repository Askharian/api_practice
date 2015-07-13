class DivvyApi
  attr_accessor :parsed_result

  def initialize
    url = "http://www.divvybikes.com/stations/json/"
    result = open(url).read
    @parsed_result = JSON.parse(result)
  end

  def self.station_name(station_hash)
    station_hash['stationName']
  end

  def self.available_bikes(station_hash)
    station_hash['availableBikes']
  end

  def available_stations(num_bikes)
    available_stations = []
    parsed_result['stationBeanList'].each do |station_hash|
      if station_hash['availableBikes'] >= num_bikes
        available_stations << station_hash
      end
    end
    return available_stations
  end
end
