class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.float :score
      t.string :remark
      t.references :test, foreign_key: true
      t.references :candidate, foreign_key: true

      t.timestamps
    end
  end
end
