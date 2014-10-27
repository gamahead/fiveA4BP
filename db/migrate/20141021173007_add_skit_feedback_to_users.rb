class AddSkitFeedbackToUsers < ActiveRecord::Migration
  def change
    add_column :users, :SkitFeedback, :text
  end
end
