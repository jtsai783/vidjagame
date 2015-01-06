require 'net/http'


class Api::SearchesController < ApplicationController
	def show
		term = params[:term]
		uri_string = "http://www.giantbomb.com/api/search/?api_key=" + "915782850798f7f647abac926e3f67aaab052c81" + "&format=json&query=" + term + "&resources=game" + "&limit=1"
		uri = URI(uri_string)
		res = Net::HTTP.get_response(uri)
		@res_hash = JSON.parse res.body
		p @res_hash["results"][0]["name"]
	end
end
