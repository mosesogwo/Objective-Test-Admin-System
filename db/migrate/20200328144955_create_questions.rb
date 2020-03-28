class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :q_text
      t.text :q_options
      t.string :q_answer
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
