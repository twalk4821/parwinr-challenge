require 'httparty'

class RequestController < ApplicationController
	respond_to :json
  def youtube
  	DEVELOPER_KEY = 'AIzaSyAPykhM0rrERLvFrsc6OoxxOVN2eC-Z930'
  	BASE_URL = 'https://www.googleapis.com/youtube/v3'
  	url = '${base_URL}/search?part=snippet&q=YouTube+Data+API&type=video&videoCaption=closedCaption&key=${DEVELOPER_KEY}'
  	@response = HTTParty.get(url)
  	respond_with @response
  	
  end
  
end
