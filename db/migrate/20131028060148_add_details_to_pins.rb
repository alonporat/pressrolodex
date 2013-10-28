class AddDetailsToPins < ActiveRecord::Migration
  def change
    add_column :pins, :Publication, :string
    add_column :pins, :RepEmail, :string
    add_column :pins, :Blog, :string
    add_column :pins, :Linkedin, :string
    add_column :pins, :Twitter, :string
    add_column :pins, :Facebook, :string
  end
end
