class CreateTanks < ActiveRecord::Migration
  def change
    create_table :tanks do |t|

      t.timestamps null: false
    end
  end
end
