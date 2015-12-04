class Itinerary < ActiveRecord::Base
  belongs_to :user
  has_many :destinations
  accepts_nested_attributes_for :destinations
end
