class RemoveKeywordsToPins < ActiveRecord::Migration
  def change
    remove_column :pins, :keywords, :string
  end
end
