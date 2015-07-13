require 'open-uri'
require 'json'

class ApiController < ApplicationController
  def pirate_form
  end

  def pirate_process
    #=== Instructions ===================================
    # Translate the text submitted from the pirate_form action
    # into pirate-speak
    #
    # Ref: http://isithackday.com/arrpi.php?
    #================================================
    @translator = PirateApi.new(params['text'])
  end


  def coord_form
    #=== Instructions ===================================
    # Create a form to send a user's address to the coord_process
    # action
    #================================================
  end

  def coord_process
    #=== Instructions ===================================
    # Using the Google geocoding API, find latitude and longitude
    # coordinates based on a user-submitted address. Send the
    # coordinates down to the view.
    #
    # Ref: https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA
    # as an example
    #================================================
    @geocoder = GeocoderApi.new(params['address'])
  end

  def meme_gen_form
    #=== Instructions ===================================
    # Create a form to send a info to the meme_gen_process
    # action
    #
    # Ref: http://apimeme.com/
    #================================================
  end

  def meme_process_form
    #=== Instructions ===================================
    # Create a meme based on user-submitted info
    #
    # Ref: http://apimeme.com/
    #================================================
    text = URI.encode(params['text'])
    @src = "http://apimeme.com/meme?meme=Confession+Bear&top=&bottom=#{text}"
  end

  def congress_form
    #=== Instructions ===================================
    # Create a form to send a keyword to the congress_process
    # action
    #================================================
  end

  def congress_process
    #=== Instructions ===================================
    # Use the Library of Congress image API to display a relevant
    # picture based on a user-submitted keyword
    #
    # Ref: http://www.loc.gov/pictures/search/?q=computer&fo=json
    #================================================
  end

  def random_user
    #=== Instructions ===================================
    # Use the Radom User API to create a dynamic profile page
    # that changes on page refresh. Use at least 3 items from
    # the API response
    #
    # Ref: http://api.randomuser.me/
    #================================================
  end

  def wiki_image_form
    #=== Instructions ===================================
    # Create a form to send a keyword to the wiki_image_process
    # action
    #================================================
  end

  def wiki_image_process
    #=== Instructions ===================================
    # Use the Wikipedia API to display a relevant
    # picture or set of pictures based on a user-submitted keyword
    #
    # Ref: http://techslides.com/grab-wikipedia-pictures-by-api-with-php
    #================================================
  end

  def nearest_station
    #=== Instructions ===================================
    # Use the Divvy API to display all stations that have at least
    # 5 bikes available
    #
    # Bonus: Sort the stations by distance from a user-submitted
    # address
    #
    # Ref: http://www.divvybikes.com/stations/json/
    #================================================
    @divvy = DivvyApi.new
  end
end
