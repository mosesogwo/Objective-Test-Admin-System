class AddReferencesToUserTests < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_tests, :candidate, foreign_key: false
    add_reference :user_tests, :test, foreign_key: false

    add_foreign_key :user_tests, :candidates
    add_foreign_key :user_tests, :tests
  end
end
