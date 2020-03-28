class CreateUserTests < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tests do |t|
      t.references :test, foreign_key: true
      t.references :candidate, foreign_key: true

      t.timestamps
    end
  end
end
