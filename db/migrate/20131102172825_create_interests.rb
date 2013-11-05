class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end
end
