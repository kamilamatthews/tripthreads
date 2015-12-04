class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.references :itinerary, index: true, foreign_key: true
      t.string :name
      t.string :climate
      t.string :purpose
      t.integer :number_of_outfits_needed
      t.timestamps null: false
    end
  end
end
