require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'Validations' do
    it 'with invalid title' do
      expect(Movie.create(release_year: Time.zone.now.year)).to_not be_valid
    end
    it "with nil release_year" do
      expect(Movie.create(title: 'Movie title')).to_not be_valid
    end
    it 'with invalid year of release_year' do
      expect(Movie.create(title: 'Movie title', release_year: Time.zone.now - 200.years)).to_not be_valid
    end
  end
end
