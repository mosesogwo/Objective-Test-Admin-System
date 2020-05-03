class RemoveReferencesFromUserTests < ActiveRecord::Migration[5.2]
  def change
    remove_reference :user_tests, :candidate, foreign_key: true
    remove_reference :user_tests, :test, foreign_key: true
  end
end
