require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'Validations' do
    it 'with invalid title' do
      expect(Movie.create(release_year: Time.zone.now.year)).to_not be_valid
    end
    it "release year cant't be blank" do
      expect(Movie.create(title: 'Movie title')).to_not be_valid
    end
  end
end
