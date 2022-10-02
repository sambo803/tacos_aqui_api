class AddColumnToCarts < ActiveRecord::Migration[7.0]
  def change
    add_column :carts, :image_url, :string
  end
end
