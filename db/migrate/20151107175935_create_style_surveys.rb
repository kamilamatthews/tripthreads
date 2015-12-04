class CreateStyleSurveys < ActiveRecord::Migration
  def change
    create_table :style_surveys do |t|
      t.references :user, index: true, foreign_key: true
      t.text :style_type, array: true, default: []
      t.text :colors, array: true, default: []
      t.text :patterns, array: true, default: []
      t.text :preferred_brands, array: true, default: []
      t.string :preferred_jewelry_type
      t.integer :age
      t.boolean :ear_piercings
      t.text :additional_info, array: true, default: []

      t.timestamps null: false
    end
  end
end
