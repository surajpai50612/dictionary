require 'rails_helper'
require 'rest-client'

RSpec.describe "Meanings", type: :request do
  describe "GET /meaning/:word" do
    it "searched data exist" do
      url = 'https://api.dictionaryapi.dev/api/v2/entries/en/ant'
      response = RestClient.get(url)
      expect(response).to match(a_string_including("application/json"))
    end

    it "searched data donot exist" do
      url = 'https://api.dictionaryapi.dev/api/v2/entries/en/suraj'
      response = RestClient.get(url)
      expect(response.content_type).to match(a_string_including("application/json"))
    end
  end
end
