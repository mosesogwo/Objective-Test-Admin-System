class AddForeignKeysToUserTests < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_tests, :test, foreign_key: true
    add_reference :user_tests, :candidate, foreign_key: true
  end
end
