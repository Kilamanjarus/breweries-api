class CreateBreweries < ActiveRecord::Migration[7.0]
  def change
    create_table :breweries do |t|
      t.string :address
      t.string :latitude
      t.string :longitude
      t.string :name

      t.timestamps
    end
  end
end
