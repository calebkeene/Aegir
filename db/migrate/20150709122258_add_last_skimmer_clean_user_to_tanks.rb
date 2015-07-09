class AddLastSkimmerCleanUserToTanks < ActiveRecord::Migration
  def change
  	add_column :tanks, :last_skimmer_clean_user, :string
  end
end
