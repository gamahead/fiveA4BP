class AddFinalFeedbackToUsers < ActiveRecord::Migration
  def change
    add_column :users, :final_feedback, :text
  end
end
