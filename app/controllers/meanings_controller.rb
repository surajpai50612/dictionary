class MeaningsController < ApplicationController
    require 'rest-client'

    def words
        url = 'https://api.dictionaryapi.dev/api/v2/entries/en/'+params[:word]
        response = RestClient.get(url)
        render json: response 
    end
end