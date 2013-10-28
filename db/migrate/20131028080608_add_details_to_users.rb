class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :FirstName, :string
    add_column :users, :LastName, :string
    add_column :users, :Nickname, :string
  end
end
