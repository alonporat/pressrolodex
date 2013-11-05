class AddKeywordsToPins < ActiveRecord::Migration
  def change
    add_column :pins, :keywords, :string
  end
end
