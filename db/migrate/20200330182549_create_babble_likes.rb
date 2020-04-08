class CreateBabbleLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :babble_likes do |t|
      t.integer :a_like
      t.integer :babble_id
      t.integer :user_id

      t.timestamps
    end
  end
end
