class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :Reporter

      t.timestamps
    end
  end
end
