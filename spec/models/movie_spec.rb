require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'Valid Model' do
    it 'create a new Movie' do
      movie = Movie.create(title: 'Movie Title', release_year: Time.zone.now.year)
      expect(movie).to be_valid
    end
  end
end
