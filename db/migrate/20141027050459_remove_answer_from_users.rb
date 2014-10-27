class RemoveAnswerFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :answer, :text
  end
end
