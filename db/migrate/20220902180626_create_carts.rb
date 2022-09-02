class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :name
      t.string :location
      t.float :latitude
      t.float :longitude
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
