require 'rails_helper'

RSpec.describe 'Movies', type: :request do
  let(:valid_attributes) do
    {
      title: 'A Article Title',
      release_year: Time.zone.now - 1.year
    }
  end

  describe 'GET /index' do
    it 'return a successful response' do
      get '/movies/'

      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /show' do
    it 'return a successful response' do
      movie = Movie.create! valid_attributes
      get movie_url(movie)

      expect(response).to have_http_status(:ok)
    end
  end
end
