class RemoveReferencesFromResults < ActiveRecord::Migration[5.2]
  def change
    remove_reference :results, :candidate, foreign_key: true
    remove_reference :results, :test, foreign_key: true
  end
end
