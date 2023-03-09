class CreateOutfits < ActiveRecord::Migration[6.1]
  def change
    create_table :outfits do |t|
      t.string :name
      t.string :pet
      t.float :price
      t.string :style
      t.string :color

      t.timestamps
    end
  end
end
