class RemoveSkitFeedbackFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :SkitFeedback, :text
  end
end
