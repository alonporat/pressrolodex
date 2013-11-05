class FixColumnNames < ActiveRecord::Migration
  def change
  	rename_column :pins, :Email, :email
  	rename_column :pins, :Publication, :publication
  	rename_column :pins, :RepEmail, :repemail
  	rename_column :pins, :Blog, :blog
  	rename_column :pins, :Linkedin, :linkedin
  	rename_column :pins, :Twitter, :twitter
  	rename_column :pins, :Facebook, :facebook

  end
end
