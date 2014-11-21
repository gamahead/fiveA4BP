class AddClinicToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :clinic, :string
  end
end
