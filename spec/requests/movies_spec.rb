require 'rails_helper'

RSpec.describe 'Movies', type: :request do
  describe 'GET /index' do
    it 'return a successful response' do
      get '/movies/'

      expect(response).to have_http_status(:ok)
    end
  end
end
