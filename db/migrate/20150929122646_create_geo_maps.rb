class CreateGeoMaps < ActiveRecord::Migration
  def change
    create_table :geo_maps do |t|
      t.float :latitude 
      t.float :longitude
      t.timestamps null: false
    end
  end
end
