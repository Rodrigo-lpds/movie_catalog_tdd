require 'rails_helper'

RSpec.describe 'Movies', type: :request do
  describe 'GET /index' do
    it 'list all movies' do
      get '/movies/'

      expect(response).to have_http_status(200)
    end
  end
end
