class AddCountryOfOriginToPumps < ActiveRecord::Migration
  def change
  	add_column :pumps, :country_of_origin, :string
  end
end
