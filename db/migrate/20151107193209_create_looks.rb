class CreateLooks < ActiveRecord::Migration
  def change
    create_table :looks do |t|
      t.references :destination, foreign_key: true, index: true
      t.string :name
      t.text :items, array: true, default: []
      t.text :preferred_jeans_types, array: true, default: []
      t.text :preferred_shoes_types, array: true, default: []
      t.text :jewelry_types, array: true, default: []
      t.timestamps null: false
    end
  end
end
