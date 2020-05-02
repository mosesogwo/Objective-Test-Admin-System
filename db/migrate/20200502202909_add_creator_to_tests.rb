class AddCreatorToTests < ActiveRecord::Migration[5.2]
  def change
    add_reference :tests, :creator, foreign_key: false
    add_foreign_key :tests, :creators
  end

  
end
