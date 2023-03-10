class AddSizeToOutfits < ActiveRecord::Migration[6.1]
  def change
    add_column :outfits, :size, :string
  end
end
