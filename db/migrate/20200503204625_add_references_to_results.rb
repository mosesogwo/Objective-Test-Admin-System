class AddReferencesToResults < ActiveRecord::Migration[5.2]
  def change
    add_reference :results, :candidate, foreign_key: false
    add_reference :results, :test, foreign_key: false

    add_foreign_key :results, :candidates
    add_foreign_key :results, :tests
  end
end
