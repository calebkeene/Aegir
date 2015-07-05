class CreatePumps < ActiveRecord::Migration
  def change
    create_table :pumps do |t|

      t.timestamps null: false
    end
  end
end
