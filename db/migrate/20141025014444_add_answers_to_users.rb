class AddAnswersToUsers < ActiveRecord::Migration
  def change
    add_column :users, :answers, :text
    User.reset_column_information
  end
end
