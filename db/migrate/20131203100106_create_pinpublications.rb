class CreatePinpublications < ActiveRecord::Migration
  def change
    create_table :pinpublications do |t|
      t.integer :pin_id, :null => false
      t.integer :publication_id, :null => false

      t.timestamps
    end
  end
end
