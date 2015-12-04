class Look < ActiveRecord::Base
  belongs_to :destination

  MAX_OUTFITS = 15

  def self.look_items
    ['Jewelry', 'Sunglasses', 'Watch', 'Handbag', 'Shoes', 'Travel Gear', 'Top', 'Bottom', 'Dress', 'Beachwear', 'Suit', 'Outerwear']
  end

  def self.jeans
    ['Boyfriend', 'Flared', 'Skinny', 'High-rise', 'Mid-rise', 'Low-rise', 'Other']
  end

  def self.jewelry
    ['Necklace', 'Earings', 'Bracelet', 'Ring']
  end

  def self.shoes_types
    ['Pumps', 'Wedges', 'Sandals', 'Boots', 'Flats', 'Sneakers', 'I am not sure']
  end
end
