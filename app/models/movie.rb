class Movie < ApplicationRecord
  validates :title, :release_year, presence: true
  validates :release_year, comparison: { greater_than: Time.zone.now - 100.years, less_than: Time.zone.now }
end
