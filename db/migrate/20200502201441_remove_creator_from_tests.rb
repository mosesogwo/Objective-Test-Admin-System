class RemoveCreatorFromTests < ActiveRecord::Migration[5.2]
  def change
    remove_reference :tests, :creator, foreign_key: true
  end
end
