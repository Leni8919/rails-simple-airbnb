class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :name, validates presence: true
      t.string :address, validates presence: true
      t.text :description
      t.integer :price_per_night, validates presence: true
      t.integer :number_of_guests, validates presence: true

      t.timestamps
    end
  end
end
