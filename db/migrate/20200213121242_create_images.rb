class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image_name
      t.string :type
      t.text :description
      t.integer :price
      t.references :user, foreign_key: true
      t.references :sub_category, foreign_key: true
      t.timestamps
    end
  end
end
