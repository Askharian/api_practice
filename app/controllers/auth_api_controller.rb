require 'open-uri'
require 'json'

class AuthApiController < ApplicationController
  def mashape_intro_form
    #=== Example =====================================
    # Create a form that sends text to the mashape_intro_process
    # action.
    #
    # Ref: https://www.mashape.com/ismaelc/yoda-speak
    #================================================
  end

  def mashape_intro_process
    #=== Example =====================================
    # Use the Yoda Speak API in the Mashape platform to
    # translate text into Yoda speak. Make sure the 'unirest' gem
    # is installed in your gemfile.
    #
    # Ref: https://www.mashape.com/ismaelc/yoda-speak
    #================================================
    user_text = URI.encode(params[:text])
    response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=#{user_text}",
      headers:{
        "X-Mashape-Key" => "mLkvKPbISwmsh9qoL0dOebGWtsS2p1mK4hZjsnLY30eb9bP4DO",
        "Accept" => "text/plain"
      }
      @result = response.body
  end

  def face_detection_form
    #=== Instructions ===================================
    # Create a form that lets a user send a image url to the
    # face_detection_process action
    #
    # Ref: https://www.mashape.com/faceplusplus/faceplusplus-face-detection
    #================================================
  end

  def face_detection_process
    #=== Instructions ===================================
    # Use the Face Detection API in the Mashape platform to
    # display data about a user-submitted image URL
    #
    # Ref: https://www.mashape.com/faceplusplus/faceplusplus-face-detection
    #================================================
    # These code snippets use an open-source library. http://unirest.io/ruby
    image_url = URI.encode(params[:image])
    response = Unirest.get "https://faceplusplus-faceplusplus.p.mashape.com/detection/detect?attribute=glass%2Cpose%2Cgender%2Cage%2Crace%2Csmiling&url=#{image_url}",
      headers:{
        "X-Mashape-Key" => "mLkvKPbISwmsh9qoL0dOebGWtsS2p1mK4hZjsnLY30eb9bP4DO",
        "Accept" => "application/json"
      }
    # raise response.raw_body.inspect

    @result = response.body['face'][0]['attribute']['age']['value']
  end

  def sentiment_analysis_form
    #=== Instructions ===================================
    # Create a form that lets a user send an article url to the
    # sentiment_analysis_process action
    #
    # Ref: https://www.mashape.com/loudelement/free-natural-language-processing-service
    #================================================
  end

  def sentiment_analysis_process
    #=== Instructions ===================================
    # Use the Face Detection API in the Mashape platform to
    # display data about a user-submitted image URL
    #
    # Ref: https://www.mashape.com/loudelement/free-natural-language-processing-service
    #================================================
  end
end
