class CreatePininterests < ActiveRecord::Migration
  def change
    create_table :pininterests do |t|
      t.integer :pin_id, :null => false
      t.integer :interest_id, :null => false

      t.timestamps
    end
  end
end
