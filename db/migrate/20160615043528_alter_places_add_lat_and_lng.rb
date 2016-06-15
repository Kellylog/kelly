class AlterPlacesAddLatAndLng < ActiveRecord::Migration
  def change
    add_column :seouls, :latitude, :float
    add_column :seouls, :longitude, :float
  end
end
