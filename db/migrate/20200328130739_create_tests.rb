class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.float :pass_score
      t.references :creator, foreign_key: true

      t.timestamps
    end
  end
end
