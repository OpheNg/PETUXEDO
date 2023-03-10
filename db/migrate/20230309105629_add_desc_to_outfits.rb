class AddDescToOutfits < ActiveRecord::Migration[6.1]
  def change
    add_column :outfits, :description, :text
  end
end
