class RemoveAnswersFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :Answers, :text
  end
end
