class AddLastskimmercleanDateToTanks < ActiveRecord::Migration
  def change
  	add_column :tanks, :last_skimmer_clean, :datetime
  end
end
