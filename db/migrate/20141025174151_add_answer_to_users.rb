class AddAnswerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :answer, :text
  end

  User.reset_column_information
end
