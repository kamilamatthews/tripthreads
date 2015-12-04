class Destination < ActiveRecord::Base
  belongs_to :itinerary
  has_many :looks
  accepts_nested_attributes_for :looks

  def self.climates
    [{name: 'rainy', icon: 'icon-rain'}, {name: 'wintery', icon: 'icon-snow' }, {name: 'tropical', icon: 'icon-sun'}]
  end

  def self.purposes
    ['Business', 'Vacation', 'Wedding', 'Other']
  end
end
