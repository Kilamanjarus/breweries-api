class ChangeTypesInBreweries < ActiveRecord::Migration[7.0]
  def change
    execute "ALTER TABLE breweries ALTER COLUMN latitude TYPE float USING (latitude::float)"
    execute "ALTER TABLE breweries ALTER COLUMN longitude TYPE float USING (longitude::float)"
  end
end
