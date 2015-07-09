class AddSkimmerCleansToUser < ActiveRecord::Migration
  def change
  	add_column :users, :skimmer_cleans, :integer
  end
end
