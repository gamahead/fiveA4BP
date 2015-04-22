class AddTimeStampToUsers < ActiveRecord::Migration
  def change
    add_column :users, :time_stamp, :datetime
  end
end
